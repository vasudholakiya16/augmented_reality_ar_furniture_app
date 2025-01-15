import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class UploadItem extends StatefulWidget {
  const UploadItem({super.key});

  @override
  State<UploadItem> createState() => _UploadItemState();
}

class _UploadItemState extends State<UploadItem> {
  TextEditingController sellerNameController = TextEditingController();
  TextEditingController sellerPhoneNumberController = TextEditingController();
  TextEditingController itemNameController = TextEditingController();
  TextEditingController itemDescriptionController = TextEditingController();
  TextEditingController itemPriceController = TextEditingController();

  Uint8List? imageBytesFilesUint8List;
  bool isUploading = false;

// upload Item logic goes here
  Widget uploadItemForScreen() {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Upload Item',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              // upload item logic goes here
            },
            icon: const Icon(Icons.cloud_upload_outlined),
            color: Colors.white,
            focusColor: Colors.grey[100],
          )
        ],
      ),
      body: ListView(
        children: [
          isUploading == true
              ? LinearProgressIndicator(
                  color: Colors.purple[400],
                )
              : Container(),

          // add images here
          SizedBox(
            height: 230,
            width: MediaQuery.of(context).size.width * 0.8,
            child: imageBytesFilesUint8List == null
                ? const Icon(
                    Icons.image_not_supported_outlined,
                    color: Colors.white,
                  )
                : Image.memory(
                    imageBytesFilesUint8List!,
                    fit: BoxFit.cover,
                  ),
          ),
          const Divider(
            color: Colors.white70,
            thickness: 2,
          ),

          //seller name
          ListTile(
            leading: const Icon(
              Icons.person_pin_rounded,
              color: Colors.white,
            ),
            title: SizedBox(
              width: 250,
              child: TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
                ],
                keyboardType: TextInputType.text,
                controller: sellerNameController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'Seller Name',
                  hintStyle: TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.white70,
            thickness: 1,
          ),

          //seller phone number
          ListTile(
            leading: const Icon(
              Icons.phone,
              color: Colors.white,
            ),
            title: SizedBox(
              width: 250,
              child: TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                keyboardType: TextInputType.number,
                controller: sellerPhoneNumberController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'Seller Phone Number',
                  hintStyle: TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.white70,
            thickness: 1,
          ),
          // item name
          ListTile(
            leading: const Icon(
              Icons.shopping_bag,
              color: Colors.white,
            ),
            title: SizedBox(
              width: 250,
              child: TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
                ],
                keyboardType: TextInputType.text,
                controller: itemNameController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'Item Name',
                  hintStyle: TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.white70,
            thickness: 1,
          ),
          // item description
          ListTile(
            leading: const Icon(
              Icons.description,
              color: Colors.white,
            ),
            title: SizedBox(
              width: 250,
              child: TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
                ],
                keyboardType: TextInputType.multiline,
                controller: itemDescriptionController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'Item Description',
                  hintStyle: TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.white70,
            thickness: 1,
          ),
          // item price
          ListTile(
            leading: const Icon(
              Icons.money,
              color: Colors.white,
            ),
            title: SizedBox(
              width: 250,
              child: TextField(
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                keyboardType: TextInputType.number,
                controller: itemPriceController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'Item Price',
                  hintStyle: TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.white70,
            thickness: 1,
          ),
        ],
      ),
    );
  }

  Widget defaultScreen() {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Upload Item',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.add_photo_alternate_outlined,
            color: Colors.white,
            size: 200,
          ),
          ElevatedButton(
            onPressed: () {
              showDialogBox();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black54,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
            ),
            child: const Text(
              'Upload Image',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      )),
    );
  }

  showDialogBox() {
    return showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            backgroundColor: Colors.black,
            title: const Text(
              'item Image',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  // capture image with camera logic goes here
                  captureImageWithCamera();
                },
                child: const Text(
                  'Capture Image with Camera',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  // select image from gallery logic goes here
                  selectImageFromGallery();
                },
                child: const Text(
                  'Select Image from Gallery',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          );
        });
  }

  captureImageWithCamera() async {
    Navigator.pop(context);
    // capture image with camera logic goes here
    try {
      // capture image with camera logic goes here
      final pickImage =
          await ImagePicker().pickImage(source: ImageSource.camera);

      if (pickImage != null) {
        String imagePath = pickImage.path;
        imageBytesFilesUint8List = await pickImage.readAsBytes();
        if (kDebugMode) {
          print(imagePath);
        }
        // remove background for image
        setState(() {
          imageBytesFilesUint8List;
        });
      }
    } catch (e) {
      if (e is PlatformException) {
        if (e.code == 'camera_access_denied') {
          print('Camera access denied');
        }
      }
      setState(() {
        imageBytesFilesUint8List = null;
      });
    }
  }

  selectImageFromGallery() async {
    // select image from gallery logic goes here
    Navigator.pop(context);

    // capture image with camera logic goes here
    try {
      // capture image with camera logic goes here
      final pickImage =
          await ImagePicker().pickImage(source: ImageSource.gallery);

      if (pickImage != null) {
        String imagePath = pickImage.path;
        imageBytesFilesUint8List = await pickImage.readAsBytes();
        if (kDebugMode) {
          print(imagePath);
        }
        // remove background for image
        setState(() {
          imageBytesFilesUint8List;
        });
      }
    } catch (e) {
      if (e is PlatformException) {
        if (e.code == 'camera_access_denied') {
          print('Camera access denied');
        }
      }
      setState(() {
        imageBytesFilesUint8List = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return imageBytesFilesUint8List == null
        ? defaultScreen()
        : uploadItemForScreen();
  }
}
