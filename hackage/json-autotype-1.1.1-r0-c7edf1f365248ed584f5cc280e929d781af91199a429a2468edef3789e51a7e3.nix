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
      specVersion = "1.10";
      identifier = {
        name = "json-autotype";
        version = "1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright by Michal J. Gajda '2014-'2017";
      maintainer = "mjgajda@gmail.com";
      author = "Michal J. Gajda";
      homepage = "https://github.com/mgajda/json-autotype";
      url = "";
      synopsis = "Automatic type declaration for JSON input data";
      description = "Generates datatype declarations with Aeson's \"FromJSON\" instances\nfrom a set of example \".json\" files.\n\nTo get started you need to install the package,\nand run \"json-autotype\" binary on an input \".json\" file.\nThat will generate a new Aeson-based JSON parser.\n\n\"\$ json-autotype input.json -o JSONTypes.hs\"\n\nFeel free to tweak the by changing types of the fields\n- any field type that is instance of \"FromJSON\" should work.\n\nYou may immediately test the parser by calling it as a script:\n\n\"\$ runghc JSONTypes.hs input.json\"\n\nOne can now use multiple input files to generate better type description.\n\nNow with Elm code generation support!\n(If you want your favourite programming language supported too -\nname your price and mail the author.)\n\nSee introduction on  <https://github.com/mgajda/json-autotype>\nfor details.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.GenericPretty)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
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
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.uniplate)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.yaml)
          ];
        };
      };
      tests = {
        "json-autotype-qc-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GenericPretty)
            (hsPkgs.aeson)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.pretty)
            (hsPkgs.scientific)
            (hsPkgs.smallcheck)
            (hsPkgs.text)
            (hsPkgs.uniplate)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.QuickCheck)
          ];
        };
        "json-autotype-examples" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GenericPretty)
            (hsPkgs.aeson)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.optparse-applicative)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.scientific)
            (hsPkgs.smallcheck)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.uniplate)
            (hsPkgs.vector)
            (hsPkgs.QuickCheck)
          ];
        };
        "json-autotype-gen-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.GenericPretty)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.optparse-applicative)
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