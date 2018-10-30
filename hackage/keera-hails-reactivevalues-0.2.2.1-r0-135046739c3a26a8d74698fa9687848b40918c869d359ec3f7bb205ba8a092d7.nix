{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      test-hlint = true;
      test-doc-coverage = true;
      test-unit-tests = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "keera-hails-reactivevalues";
        version = "0.2.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.es";
      author = "Ivan Perez";
      homepage = "http://www.keera.es/blog/community/";
      url = "";
      synopsis = "Haskell on Rails - Reactive Values";
      description = "This package contains a general definition of Reactive Values and several useful combinators. A reactive value is a /typed mutable value with access properties and change propagation/. Access property can be read-only, read-write or read-write.\n\nHow an RV is actually implemented, and when and how change propagation is executed is dependent on each RV. For instance, Gtk widget properties would normally use the standard event-handler installers to implement change propagation, whereas pure Haskell values might fork a thread (or not) and propagate changes asynchronously.\n\nRVs can be created from pure models (see <https://github.com/keera-studios/keera-hails/tree/master/keera-hails-mvc-model-lightmodel keera-hails-mvc-model-lightmodel> and  <https://github.com/keera-studios/keera-hails/tree/master/keera-hails-mvc-model-protectedmodel keera-hails-mvc-model-protectedmodel>), Gtk+\\/WX\\/Qt\\/HTML DOM\\/Android widget properties\\/event handlers\\/getters\\/setters, files, sockets, FRP networks. Other backends are also available. See <https://github.com/keera-studios/keera-hails keera-hails> for a list of available backends, tutorials, etc.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.contravariant)
        ];
      };
      tests = {
        "hlint" = {
          depends  = pkgs.lib.optionals (!(!flags.test-hlint)) [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
        "haddock-coverage" = {
          depends  = pkgs.lib.optionals (!(!flags.test-doc-coverage)) [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.regex-posix)
          ];
        };
        "unit-tests" = {
          depends  = pkgs.lib.optionals (!(!flags.test-unit-tests)) [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.keera-hails-reactivevalues)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }