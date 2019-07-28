{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test-hlint = false; test-doc-coverage = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "keera-hails-reactive-network"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ivan.perez@keera.co.uk";
      author = "Ivan Perez";
      homepage = "http://www.keera.co.uk/blog/community/";
      url = "";
      synopsis = "Haskell on Rails - Sockets as Reactive Values";
      description = "A layer to create RVs that connect to network sockets.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.keera-hails-reactivevalues)
          (hsPkgs.network)
          (hsPkgs.network-bsd)
          ];
        };
      tests = {
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs.base)
            (hsPkgs.hlint)
            ];
          };
        "haddock-coverage" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doc-coverage)) [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.regex-posix)
            ];
          };
        };
      };
    }