{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "json-autotype"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright by Michal J. Gajda '2014-'2015";
      maintainer = "mjgajda@gmail.com";
      author = "Michal J. Gajda";
      homepage = "https://github.com/mgajda/json-autotype";
      url = "";
      synopsis = "Automatic type declaration for JSON input data";
      description = "Generates datatype declarations with Aeson's \"FromJSON\" instances\nfrom a set of example \".json\" files.\n\nTo get started you need to install the package,\nand run \"json-autotype\" binary on an input \".json\" file.\nThat will generate a new Aeson-based JSON parser.\n\n\"\$ json-autotype input.json -o JSONTypes.hs\"\n\nFeel free to tweak the by changing types of the fields\n- any field type that is instance of \"FromJSON\" should work.\n\nYou may immediately test the parser by calling it as a script:\n\n\"\$ runghc JSONTypes.hs input.json\"\n\nOne can now use multiple input files to generate better type description.\n\nSee introduction on  <https://github.com/mgajda/json-autotype>\nfor details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.GenericPretty)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.hint)
          (hsPkgs.hflags)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.uniplate)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ];
        };
      exes = {
        "json-autotype" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GenericPretty)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.hflags)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.uniplate)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            ];
          };
        };
      tests = {
        "json-autotype-qc-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GenericPretty)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.scientific)
            (hsPkgs.smallcheck)
            (hsPkgs.text)
            (hsPkgs.uniplate)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.QuickCheck)
            ];
          };
        "json-autotype-random-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GenericPretty)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.hflags)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.scientific)
            (hsPkgs.smallcheck)
            (hsPkgs.text)
            (hsPkgs.uniplate)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }