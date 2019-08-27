let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "UTFTConverter"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "Alexander Isenko <alex.isenko@googlemail.com>";
      author = "Alexander Isenko";
      homepage = "http://github.com/cirquit/UTFTConverter";
      url = "";
      synopsis = "Processing popular picture formats into .c or .raw format in RGB565";
      description = "/About:/\n\nThis package was created because I could not find a tool that can be used on UNIX systems to\nparse a picture into an array of 'RGB565' values and save them to a '.c' or '.raw' file. Both formats\nare used by the <http://www.rinkydinkelectronics.com/library.php?id=51 UTFT library> to display pictures on to a TFT display.\n\nThis package includes, but not limited to, an executable which is made to be as identical as possible\nto the corresponding tool that is also downloaded with the <http://www.rinkydinkelectronics.com/library.php?id=51 UTFT library>.\n\n\n/Usage:/\n\n> ./UTFTConverter <filespec> /c|r [/o <path>] [/t AVR|ARM|PIC32]\n>\n> <filespec>:  File(s) to convert\n> parameters: /c            - Create output as .c array files\n>             /r            - Create output as .raw files\n>             /o <path>     - Set the output directory to <path>\n>             /t <platform> - Select target plaform\n>                             AVR   : Most Arduinos, Bobuion\n>                             ARM   : Arduino Due, Teensy, TI CC3200 LaunchPad\n>                             PIC32 : All chipKit boards\n>\n> You must specify either /c or /r. All other parameters are optional.\n> If /o is ommited the current directory will be used for output.\n> If /t is ommited the target platform will be set to AVR.'\n\n\n/Supported formats:/\n\nThe exported library is using <http://hackage.haskell.org/package/JuicyPixels JuicyPixels> to convert incoming\n\n* '.gif'\n\n* '.png'\n\n* '.jpg' \\/\\ '.jpe' \\/\\ '.jpeg'\n\n* '.bmp'\n\n* '.tga'\n\nand translates every pixel to a 'RGB565' format, which is a 4 digit hex number.\n\n\n/Library:/\n\nThe only really reusable library is the 'Format.RGB565'.\nIt support the conversion from\n\n* 'RGB' to 'RGB565' as ('Word8', 'Word8', 'Word8') -> 'Int'\n\n* 'Int' to 'Hex' as 'Int' -> 'String'\n\n\n/Example usage:/\n\n> >>> toRGB565 (0, 0, 255)\n> 31\n\n> >>> toRGB565Hex (0, 0, 255)\n> \"001F\"\n\n> >>> toHex 100\n> 64\n\n> >>> to4Hex 100\n> \"0064\"\n\n> >>> to6Hex 100\n> \"000064\"";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
          ];
        };
      exes = {
        "UTFTConverter" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."UTFTConverter" or (buildDepError "UTFTConverter"))
            ];
          };
        };
      tests = {
        "lib-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."UTFTConverter" or (buildDepError "UTFTConverter"))
            ];
          };
        };
      };
    }