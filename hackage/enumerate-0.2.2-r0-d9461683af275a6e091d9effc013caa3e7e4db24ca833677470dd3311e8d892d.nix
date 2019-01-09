{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dump-core = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "enumerate"; version = "0.2.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "samboosalis@gmail.com";
      author = "Sam Boosalis";
      homepage = "https://github.com/sboosali/enumerate";
      url = "";
      synopsis = "enumerate all the values in a finite type (automatically)";
      description = "provides\n\n* (1) a typeclass for enumerating all values in a finite type,\n* (2) a generic instance for automatic deriving, and\n* (3) helpers that reify functions (partial or total, monadic or pure)\ninto a Map.\n\nsee the \"Enumerable\" module for extensive documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.spiros)
          (hsPkgs.ghc-prim)
          (hsPkgs.array)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.vinyl)
          (hsPkgs.deepseq)
          ] ++ (pkgs.lib).optional (flags.dump-core) (hsPkgs.dump-core);
        };
      exes = {
        "example-enumerate" = {
          depends = [ (hsPkgs.base) (hsPkgs.enumerate) ];
          };
        };
      };
    }