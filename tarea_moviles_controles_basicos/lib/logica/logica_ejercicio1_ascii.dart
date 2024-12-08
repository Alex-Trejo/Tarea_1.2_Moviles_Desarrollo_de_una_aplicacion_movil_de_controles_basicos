List<String> generarTablaASCIIConPausa() {
  List<String> tablaASCII = [];
  
  // Lista de caracteres con sus descripciones
  Map<int, String> asciiMap = {
    00 : 'NULL ( Carácter nulo )',
    01 : 'SOH ( Encabezado de inicio )',
    02 : 'STX ( Texto de inicio )',
    03 : 'ETX ( Texto de fin )',
    04 : 'EOT ( Fin de transmisión )',
    05 : 'ENQ ( Consulta )',
    06 : 'ACK ( Confirmación )',
    07 : 'BEL ( Timbre )',
    08 : 'BS ( Retroceso )',
    09 : 'HT ( Tabulación horizontal )',
    10 : 'LF ( Avance de línea )',
    11 : 'VT ( Tabulación vertical )',
    12 : 'FF ( Avance de página )',
    13 : 'CR ( Retorno de carro )',
    14 : 'SO ( Desplazamiento de salida )',
    15 : 'SI ( Desplazamiento de entrada )',
    16 : 'DLE ( Escape de datos )',
    17 : 'DC1 ( Control de dispositivo 1 )',
    18 : 'DC2 ( Control de dispositivo 2 )',
    19 : 'DC3 ( Control de dispositivo 3 )',
    20 : 'DC4 ( Control de dispositivo 4 )',
    21 : 'NAK ( Negación )',
    22 : 'SYN ( Sincronización )',
    23 : 'ETB ( Bloque de fin de transmisión )',
    24 : 'CAN ( Cancelar )',
    25 : 'EM ( Fin de medio )',
    26 : 'SUB ( Sustitución )',
    27 : 'ESC ( Escape )',
    28 : 'FS ( Separador de archivo )',
    29 : 'GS ( Separador de grupo )',
    30: 'RS - Separador de registro',
    31: 'US ( Separador de unidades )',
    32: "Espacio",
    33: "¡Signo de exclamación",
    34: "\"Comillas dobles",
    35: "# Signo numeral",
    36: "\$ Signo pesos",
    37: "% Signo de porcentaje",
    38: "& Ampersand",
    39: "' Comillas simples",
    40: "( Abre paréntesis",
    41: ") Cierra paréntesis",
    42: "* Asterisco",
    43: "+ Signo más",
    44: ", Coma",
    45: "- Guion",
    46: ". Punto",
    47: "/ Barra diagonal",
    48: "0 Dígito cero",
    49: "1 Dígito uno",
    50: "2 Dígito dos",
    51: "3 Dígito tres",
    52: "4 Dígito cuatro",
    53: "5 Dígito cinco",
    54: "6 Dígito seis",
    55: "7 Dígito siete",
    56: "8 Dígito ocho",
    57: "9 Dígito nueve",
    58: ": Dos puntos",
    59: "; Punto y coma",
    60: "< Menor que",
    61: "= Igual",
    62: "> Mayor que",
    63: "? Signo de interrogación",
    64: "@ Arroba",
    65: "A Letra A mayúscula",
    66: "B Letra B mayúscula",
    67: "C Letra C mayúscula",
    68: "D Letra D mayúscula",
    69: "E Letra E mayúscula",
    70: "F Letra F mayúscula",
    71: "G Letra G mayúscula",
    72: "H Letra H mayúscula",
    73: "I Letra I mayúscula",
    74: "J Letra J mayúscula",
    75: "K Letra K mayúscula",
    76: "L Letra L mayúscula",
    77: "M Letra M mayúscula",
    78: "N Letra N mayúscula",
    79: "O Letra O mayúscula",
    80: "P Letra P mayúscula",
    81: "Q Letra Q mayúscula",
    82: "R Letra R mayúscula",
    83: "S Letra S mayúscula",
    84: "T Letra T mayúscula",
    85: "U Letra U mayúscula",
    86: "V Letra V mayúscula",
    87: "W Letra W mayúscula",
    88: "X Letra X mayúscula",
    89: "Y Letra Y mayúscula",
    90: "Z Letra Z mayúscula",
    91: "[ Corchete abierto",
    92: "\\ Barra invertida",
    93: "] Corchete cerrado",
    94: "^ Acento circunflejo",
    95: "_ Guion bajo",
    96: "` Acento grave",
    97: "a Letra a minúscula",
    98: "b Letra b minúscula",
    99: "c Letra c minúscula",
    100: "d Letra d minúscula",
    101: "e Letra e minúscula",
    102: "f Letra f minúscula",
    103: "g Letra g minúscula",
    104: "h Letra h minúscula",
    105: "i Letra i minúscula",
    106: "j Letra j minúscula",
    107: "k Letra k minúscula",
    108: "l Letra l minúscula",
    109: "m Letra m minúscula",
    110: "n Letra n minúscula",
    111: "o Letra o minúscula",
    112: "p Letra p minúscula",
    113: "q Letra q minúscula",
    114: "r Letra r minúscula",
    115: "s Letra s minúscula",
    116: "t Letra t minúscula",
    117: "u Letra u minúscula",
    118: "v Letra v minúscula",
    119: "w Letra w minúscula",
    120: "x Letra x minúscula",
    121: "y Letra y minúscula",
    122: "z Letra z minúscula",
    123: "{ Llave abierta",
    124: "| Barra vertical",
    125: "} Llave cerrada",
    126: "~ Tilde",
    127: "DEL - Suprimir",
    128: "Ç Letra C con cedilla",
    129: "ü Letra u con diéresis",
    130: "é Letra e con acento agudo",
    131: "â Letra a con circunflejo",
    132: "ä Letra a con diéresis",
    133: "à Letra a con acento grave",
    134: "å Letra a con círculo encima",
    135: "æ Letra ae",
    136: "ç Letra c con cedilla",
    137: "è Letra e con acento grave",
    138: "é Letra e con acento agudo",
    139: "ê Letra e con circunflejo",
    140: "ë Letra e con diéresis",
    141: "ì Letra i con acento grave",
    142: "í Letra i con acento agudo",
    143: "î Letra i con circunflejo",
    144: "ï Letra i con diéresis",
    145: "ð Letra eth",
    146: "ñ Letra ñ",
    147: "ò Letra o con acento grave",
    148: "ó Letra o con acento agudo",
    149: "ô Letra o con circunflejo",
    150: "ö Letra o con diéresis",
    151: "ø Letra o con barra a través",
    152: "ù Letra u con acento grave",
    153: "ú Letra u con acento agudo",
    154: "û Letra u con circunflejo",
    155: "ü Letra u con diéresis",
    156: "ý Letra y con acento agudo",
    157: "ÿ Letra y con diéresis",
    160: "á Letra a con acento agudo",
    164: "ñ Letra ñ",
    165: "Ñ Letra Ñ",
    166: "ª ( Ordinal femenino, indicador de genero femenino )",
    167: "º ( Ordinal masculino, indicador de genero masculino )",
    168: "¿ Signo de interrogación invertido",
    169: "® Marca registrada",
    170: "¬ Negación",
    171: "½ Un medio",
    172: "¼ Un cuarto",
    173: "¡ Signo de exclamación invertido",
    174: "« Comillas angulares dobles",
    175: "» Comillas angulares dobles",
    176: "░ Bloque claro",
    177: "▒ Bloque medio",
    178: "▓ Bloque oscuro",
    179: "│ Línea vertical",
    180: "┤ Línea vertical y rama derecha",
    181: "Á Letra A con acento agudo",
    182: "Â Letra A con circunflejo",
    183: "À Letra A con acento grave",
    184: "© Copyright",
    185: "╣ Línea doble y rama derecha",
    186: "║ Línea doble vertical",
    187: "╗ Línea doble y rama superior derecha",
    188: "╝ Línea doble y rama inferior derecha",
    189: "¢ Signo de centavo",
    190: "¥ Yen",
    191: "┐ Línea simple y rama superior derecha",
    192: "└ Línea simple y rama inferior izquierda",
    193: "┴ Línea simple y rama inferior",
    194: "┬ Línea simple y rama superior",
    195: "├ Línea simple y rama izquierda",
    196: "─ Línea horizontal",
    197: "┼ Línea simple y rama central",
    198: "ã Letra a con tilde",
    199: "Ã Letra A con tilde",
    200: "╚ Línea doble y rama inferior izquierda",
    201: "╔ Línea doble y rama superior izquierda",
    202: "╩ Línea doble y rama inferior",
    203: "╦ Línea doble y rama superior",
    204: "╠ Línea doble y rama izquierda",
    205: "═ Línea doble horizontal",
    206: "╬ Línea doble y rama central",
    207: "¤ Moneda",
    208: "ð Letra eth",
    209: "Ð Letra Eth",
    210: "Ê Letra E con circunflejo",
    211: "Ë Letra E con diéresis",
    212: "È Letra E con acento grave",
    213: "ı Letra i sin punto",
    214: "Í Letra I con acento agudo",
    215: "Î Letra I con circunflejo",
    216: "Ï Letra I con diéresis",
    217: "┘ Línea simple y rama inferior derecha",
    218: "┌ Línea simple y rama superior izquierda",
    219: "█ Bloque lleno",
    220: "▄ Bloque inferior medio",
    221: "¦ Barra vertical partida",
    222: "Ì Letra I con acento grave",
    223: "▀ Bloque superior medio",
    224: "Ó Letra O con acento agudo",
    225: "ß Letra eszett",
    226: "Ô Letra O con circunflejo",
    227: "Ò Letra O con acento grave",
    228: "õ Letra o con tilde",
    229: "Õ Letra O con tilde",
    230: "µ Letra mu",
    231: "þ Letra thorn",
    232: "Þ Letra Thorn",
    233: "Ú Letra U con acento agudo",
    234: "Û Letra U con circunflejo",
    235: "Ù Letra U con acento grave",
    236: "ý Letra y con acento agudo",
    237: "Ý Letra Y con acento agudo",
    238: "¯ Macrón",
    239: "´ Acento agudo",
    240: "≡ Equivalencia",
    241: "± Más o menos",
    242: "‗ Barra baja doble",
    243: "¾ Tres cuartos",
    244: "¶ Párrafo",
    245: "§ Sección",
    246: "÷ División",
    247: "¸ Cedilla",
    248: "° Grado",
    249: "¨ Diéresis",
    250: "· Punto medio",
    251: "¹ Uno",
    252: "³ Tres",
    253: "² Dos",
    254: "■ Cuadrado",
    255: "NBSP ( Espacio sin separación )",
    
    
  };

  for (int n = 0; n <= 255; n++) {
    if (asciiMap.containsKey(n)) {
      
      tablaASCII.add('Código ASCII $n = ${asciiMap[n]}');
    } else {
      
      tablaASCII.add('Código ASCII $n = ${String.fromCharCode(n)}');
    }

    
    
  }

  return tablaASCII;
}