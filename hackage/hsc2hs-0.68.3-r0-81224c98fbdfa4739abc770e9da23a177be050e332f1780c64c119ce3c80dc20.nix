{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { in-ghc-tree = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hsc2hs"; version = "0.68.3"; };
      license = "BSD-3-Clause";
      copyright = "2000, Marcin Kowalczyk";
      maintainer = "ghc-devs@haskell.org";
      author = "Marcin Kowalczyk <qrczak@knm.org.pl>";
      homepage = "";
      url = "";
      synopsis = "A preprocessor that helps with writing Haskell bindings to C code";
      description = "The hsc2hs program can be used to automate some parts of the\nprocess of writing Haskell bindings to C code.  It reads an\nalmost-Haskell source file with embedded special constructs, and\noutputs a real Haskell file with these constructs processed, based\non information taken from some C headers.  The extra constructs\nprovide Haskell counterparts of C types, values of C constants,\nincluding sizes of C types, and access to fields of C structs.\n\nFor more details, see the\n<http://downloads.haskell.org/~ghc/master/users-guide/utils.html#writing-haskell-interfaces-to-c-code-hsc2hs hsc2hs section>\nin the GHC User's Guide.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hsc2hs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }