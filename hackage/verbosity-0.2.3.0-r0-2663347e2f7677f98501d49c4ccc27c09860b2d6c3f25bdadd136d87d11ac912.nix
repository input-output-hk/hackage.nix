{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      pedantic = false;
      data-typeable = true;
      ghc-generics = true;
      binary = true;
      data-default = true;
      deepseq = true;
      cereal = false;
      safecopy = false;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "verbosity"; version = "0.2.3.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2016 Peter Trško";
      maintainer = "peter.trsko@gmail.com";
      author = "Peter Trško";
      homepage = "https://github.com/trskop/verbosity";
      url = "";
      synopsis = "Simple enum that encodes application verbosity.";
      description = "Simple enum that encodes application verbosity with various useful instances.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (((((([
          (hsPkgs.base)
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs.transformers)) ++ (pkgs.lib).optionals (flags.ghc-generics) ((pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.2" && (compiler.version).lt "7.6")) (hsPkgs.ghc-prim))) ++ (pkgs.lib).optional (flags.binary) (hsPkgs.binary)) ++ (pkgs.lib).optional (flags.data-default) (hsPkgs.data-default-class)) ++ (pkgs.lib).optional (flags.deepseq) (hsPkgs.deepseq)) ++ (pkgs.lib).optional (flags.cereal) (hsPkgs.cereal)) ++ (pkgs.lib).optional (flags.safecopy) (hsPkgs.safecopy);
        };
      };
    }