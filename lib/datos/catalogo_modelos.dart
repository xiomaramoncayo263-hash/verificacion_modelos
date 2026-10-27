import '../modelos/criterio.dart';
import '../modelos/modelo_analisis.dart';

// Construye un modelo a partir de una mapa código -> descripción.
ModeloAnalisis _crearModelo(
  String nombre,
  Map<String, String> criterios,
) {
  return ModeloAnalisis(
    nombre: nombre,
    criterios: criterios.entries
      .map((e) => Criterio(codigo: e.key, descripcion: e.value))
      .toList(),
  );
}

// Devuelve los cuatro modelos de análisis con su lista de chequeo. Cada llamada crea objetos nuevos, con las casillas sin marcar.
List<ModeloAnalisis> crearCatalogo() {
  return [
    _crearModelo('Modelo de casos de uso', {
      'CU-01': 'Los actores están identificados y nombrados',
      'CU-02': 'Los casos de uso inician con verbo en infinitivo',
      'CU-03': 'Cada requisito funcional tiene un caso de uso',
      'CU-04': 'Las relaciones include y extend son correctas',
      'CU-05': 'El límite del sistema está definido',
    }),
    _crearModelo('Modelo de clases', {
      'CL_01': 'Las clases correspondientes a entidades del dominio',
      'CL_02': 'Cada atributo tiene tipo de dato',
      'CL_03': 'Los métodos responden a los requisitos',
      'CL_04': 'Las relaciones tienen multiplicidad',
      'CL_05': 'Los nombres de clases están en singular',
    }),
    _crearModelo('Modelo de secuencia', {
      'SE_01': 'Cada diagrama corresponde a un caso de uso',
      'SE_02': 'Los objetos existen en el diagrama en el diagrama de clases',
      'SE_03': 'Los mensajes corresponden a métodos',
      'SE_04': 'Se representan los flujos alternativos',
      'SE_05': 'El orden de mensajes sigue el caso de uso',
    }),
    _crearModelo('Modelo de actividades', {
      'AC_01': 'Tiene nodo inicial y al menos un nodo final',
      'AC_02': 'Las actividades inician con verbo de acción',
      'AC_03': 'Las decisiones tienen condiciones de guarda',
      'AC_04': 'Los carriles indican el responsable',
      'AC_05': 'El flujo corresponde al proceso requerido',
    }),
  ];
}