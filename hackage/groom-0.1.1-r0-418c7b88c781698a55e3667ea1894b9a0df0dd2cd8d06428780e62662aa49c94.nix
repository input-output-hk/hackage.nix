{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "groom"; version = "0.1.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "ezyang@mit.edu";
      author = "Edward Z. Yang";
      homepage = "";
      url = "";
      synopsis = "Slightly prettier printing for well-behaved Show\ninstances.";
      description = "Automatically derived Show instances are an easy way\nto inspect data in your program.  However, for large\ndata-structures, the resulting output lacks\nwhitespace, making it unreadable.  Groom offers an\nreplacement to `show' called `groom' which attempts\nto pretty-print the output of `show'.  For example:\n\n> let x = parseExp \"foobar 1 [1,2]\"\n> in do\n>   putStrLn (show x)\n>   putStrLn (groom x)\n\nresults in:\n\n> ParseOk (App (App (Var (UnQual (Ident \"foobar\"))) (Lit (Int 1))) (List [Lit (Int 1),Lit (Int 2)]))\n> ParseOk\n>   (App (App (Var (UnQual (Ident \"foobar\"))) (Lit (Int 1)))\n>      (List [Lit (Int 1), Lit (Int 2)]))\n\nGroom works only on Show instances that output valid\nHaskell code; if Groom can't understand its input,\nit will not make any changes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }