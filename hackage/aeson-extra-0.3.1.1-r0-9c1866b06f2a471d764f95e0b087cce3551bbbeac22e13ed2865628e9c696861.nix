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
        name = "aeson-extra";
        version = "0.3.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/aeson-extra#readme";
      url = "";
      synopsis = "Extra goodies for aeson";
      description = "Package provides extra funcitonality on top of @aeson@ and @aeson-compat@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-compat)
          (hsPkgs.base-compat)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.exceptions)
          (hsPkgs.hashable)
          (hsPkgs.parsec)
          (hsPkgs.recursion-schemes)
          (hsPkgs.scientific)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.time-parsers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.transformers)
        ];
      };
      tests = {
        "aeson-extra-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.aeson)
            (hsPkgs.aeson-compat)
            (hsPkgs.base-compat)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.exceptions)
            (hsPkgs.hashable)
            (hsPkgs.parsec)
            (hsPkgs.scientific)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.these)
            (hsPkgs.time)
            (hsPkgs.time-parsers)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.aeson-extra)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.quickcheck-instances)
          ];
        };
      };
    };
  }