import 'package:flutter/material.dart';

class ScanScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image de fond
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [ Color.fromARGB(255, 208, 215, 232), Color.fromARGB(255, 161, 180, 222)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          // Bouton X en haut à droite
          Positioned(
            top: 40,
            right: 20,
            child: IconButton(
              icon: const Icon(Icons.close, size: 30, color: Colors.white),
              onPressed: () {
                // Action pour annuler et revenir en arrière
                Navigator.pop(context);
              },
            ),
          ),
          // Contenu principal
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Titre
              const Text(
                'Scan Your Fruit or Vegetable',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              // Icône de caméra
              Icon(
                Icons.camera_alt,
                size: 100,
                color: Colors.white.withOpacity(0.8),
              ),
              const SizedBox(height: 20),
              // Bouton principal
              ElevatedButton(
                onPressed: () {
                  // Action pour démarrer le scan
                  Navigator.pushNamed(context, '/startScanning');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0F1F45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: const Text(
                  'Start Scanning',
                  
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // Options supplémentaires
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Bouton pour utiliser la caméra
                  ElevatedButton.icon(
                    onPressed: () {
                      // Action pour ouvrir la caméra
                      Navigator.pushNamed(context, '/camera');
                    },
                    icon: const Icon(Icons.camera),
                    label: const Text('Use Camera'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                  ),
                  // Bouton pour télécharger depuis la galerie
                  ElevatedButton.icon(
                    onPressed: () {
                      // Action pour ouvrir la galerie
                      Navigator.pushNamed(context, '/gallery');
                    },
                    icon: const Icon(Icons.photo),
                    label: const Text('Upload from Gallery'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    ),
                  ),
                  const SizedBox(height: 50),
              
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
