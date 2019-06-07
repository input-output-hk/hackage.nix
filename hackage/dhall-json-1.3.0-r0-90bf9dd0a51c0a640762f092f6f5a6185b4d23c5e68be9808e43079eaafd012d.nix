{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { yaml-pre-0_11 = false; };
    package = {
      specVersion = "1.8.0.2";
      identifier = { name = "dhall-json"; version = "1.3.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Convert between Dhall and JSON or YAML";
      description = "Use this package if you want to convert between Dhall expressions and JSON\nor YAML. You can use this package as a library or an executable:\n\n* See the \"Dhall.JSON\" module if you want to use this package as a library\n\n* Use the @dhall-to-json@ or @dhall-to-yaml@ programs from this package if\nyou want an executable\n\nThe \"Dhall.JSON\" module also contains instructions for how to use this\npackage";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.dhall)
          (hsPkgs.exceptions)
          (hsPkgs.lens)
          (hsPkgs.optparse-applicative)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          ] ++ (if flags.yaml-pre-0_11
          then [ (hsPkgs.yaml) ]
          else [ (hsPkgs.libyaml) (hsPkgs.yaml) ]);
        };
      exes = {
        "dhall-to-json" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.bytestring)
            (hsPkgs.dhall)
            (hsPkgs.dhall-json)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            ];
          };
        "dhall-to-yaml" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.dhall)
            (hsPkgs.dhall-json)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            ];
          };
        "json-to-dhall" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.dhall)
            (hsPkgs.dhall-json)
            (hsPkgs.exceptions)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0") && !(compiler.isEta && (compiler.version).ge "0.8.4")) (hsPkgs.semigroups);
          };
        "yaml-to-dhall" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.dhall)
            (hsPkgs.dhall-json)
            (hsPkgs.exceptions)
            (hsPkgs.optparse-applicative)
            (hsPkgs.text)
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0") && !(compiler.isEta && (compiler.version).ge "0.8.4")) (hsPkgs.semigroups);
          };
        };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.dhall)
            (hsPkgs.dhall-json)
            (hsPkgs.tasty)
            (hsPkgs.text)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      };
    }