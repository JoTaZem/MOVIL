import 'package:flutter/material.dart';

class Estudios extends StatefulWidget {
  const Estudios({super.key});

  @override
  State<Estudios> createState() => _EstudiosState();
}

class _EstudiosState extends State<Estudios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Estudios"),
      ),
      body: ListView.builder(
        itemCount: listaEstudios.length,
        itemBuilder: (context, index) {
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  SizedBox(height: 8),
                  Text(
                    "Estudios #${index + 1}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0D47A1),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text("Bachiller: ${listaEstudios[index]["Bachiller"]}"),
                  SizedBox(height: 8),
                  Text("Tecnologo: ${listaEstudios[index]["Tecnologo"]}"),
                  SizedBox(height: 8),
                  Text("Profesion: ${listaEstudios[index]["Profesion"]}"),
                  SizedBox(height: 8),
                  Text("Cursos: ${listaEstudios[index]["Cursos"]}"),
                  SizedBox(height: 8),

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

List<Map<String, String>> listaEstudios = [
  {
    "Bachiller": "Institucion educativa FAU",
    "Tecnologo": "Análisis y Desarrollo de Software (ADSO)",
    "Profesion": "Desarrollador de software",
    "Cursos": "Flutter, Dart, Firebase"
  },
  {
    "Bachiller": "Colegio San Francisco de Asís",
    "Tecnologo": "Análisis y Desarrollo de Sistemas",
    "Profesion": "Analista de Sistemas",
    "Cursos": "Scrum Master, ITIL Foundation"
  },
  {
    "Bachiller": "Liceo Nacional",
    "Tecnologo": "Gestión de Redes de Datos",
    "Profesion": "Administrador de Redes",
    "Cursos": "CCNA, CompTIA Network+"
  },
  {
    "Bachiller": "Institución Educativa Normal Superior",
    "Tecnologo": "Diseño Gráfico Digital",
    "Profesion": "Diseñador UI/UX",
    "Cursos": "Adobe XD, Figma, User Experience Design"
  },
  {
    "Bachiller": "Colegio Salesiano",
    "Tecnologo": "Mantenimiento de Equipos de Cómputo",
    "Profesion": "Técnico de Soporte IT",
    "Cursos": "CompTIA A+, Reparación de Hardware"
  },
  {
    "Bachiller": "Instituto Técnico Industrial",
    "Tecnologo": "Producción Multimedia",
    "Profesion": "Editor de Video",
    "Cursos": "Adobe Premiere Pro, After Effects"
  },
  {
    "Bachiller": "Colegio de la Presentación",
    "Tecnologo": "Contabilidad y Finanzas",
    "Profesion": "Asistente Contable",
    "Cursos": "Excel Avanzado, Normas NIIF"
  },
  {
    "Bachiller": "Gimnasio Moderno",
    "Tecnologo": "Marketing Digital",
    "Profesion": "Especialista en SEO/SEM",
    "Cursos": "Google Ads, Google Analytics, SEO"
  },
  {
    "Bachiller": "Colegio Mayor del Cauca",
    "Tecnologo": "Desarrollo de Videojuegos",
    "Profesion": "Desarrollador Unity",
    "Cursos": "C# para Videojuegos, Modelado 3D con Blender"
  },
  {
    "Bachiller": "Liceo Femenino",
    "Tecnologo": "Seguridad Informática",
    "Profesion": "Analista de Ciberseguridad Jr.",
    "Cursos": "Ethical Hacking, CompTIA Security+"
  },
];