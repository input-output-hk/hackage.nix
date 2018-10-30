{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "arguedit";
        version = "0.1.0.0";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "msjean@gmx.de";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A computer assisted argumentation transcription and editing software.";
      description = "ArguEdit is an argument transciption and editing software.\nIt allows for rather objective argumentation by visualizing the elements of an argumentation.\nArgumentations may begin with definitions or a thesis. Then to support the thesis premises can be added with indentation, so that the relation of belonging is visible and spreading in a tree like manner.\nThereafter conclusions can be drawns from what was given above.\nBy making rather immaterial arguments perceivable the arguments gain persuasiveness.\nCirculations, undefined expressions or other flaws of argumentation can be pointed at.\nThe element buttons change color on clicking so each element can be marked.\nFor instance undiscussed elements could be colored gray, dismissed ones red, valid ones blue and so on.\nThis way discussing in philosophical arguments as well as in any other subject becomes computer assisted and gains power over emotionally heated pitfalls.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ArguEdit.bin" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.gtk)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.glib)
            (hsPkgs.parsec)
            (hsPkgs.indents)
            (hsPkgs.HDBC)
            (hsPkgs.bimap)
          ];
        };
      };
    };
  }