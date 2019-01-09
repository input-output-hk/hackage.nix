{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hasql-class"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Julian K. Arni";
      maintainer = "jkarni@gmail.com";
      author = "Julian K. Arni";
      homepage = "http://github.com/turingjump/hasql-class#readme";
      url = "";
      synopsis = "Encodable and Decodable classes for hasql";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.vector)
          (hsPkgs.time)
          (hsPkgs.data-default-class)
          (hsPkgs.contravariant)
          (hsPkgs.hasql)
          (hsPkgs.generics-eot)
          ];
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.time)
            (hsPkgs.data-default-class)
            (hsPkgs.contravariant)
            (hsPkgs.hasql)
            (hsPkgs.generics-eot)
            (hsPkgs.doctest)
            (hsPkgs.Glob)
            (hsPkgs.containers)
            (hsPkgs.yaml)
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.vector)
            (hsPkgs.time)
            (hsPkgs.data-default-class)
            (hsPkgs.contravariant)
            (hsPkgs.hasql)
            (hsPkgs.generics-eot)
            (hsPkgs.hasql-class)
            (hsPkgs.hspec)
            (hsPkgs.string-qq)
            (hsPkgs.QuickCheck)
            (hsPkgs.process)
            (hsPkgs.quickcheck-instances)
            ];
          };
        };
      };
    }