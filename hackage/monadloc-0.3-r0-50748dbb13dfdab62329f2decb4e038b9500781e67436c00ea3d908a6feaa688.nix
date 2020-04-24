{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { syb-in-base = false; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "monadloc"; version = "0.3"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "pepeiborra@gmail.com";
      author = "Pepe Iborra";
      homepage = "http://github.com/pepeiborra/monadloc";
      url = "";
      synopsis = "A class for monads which can keep a monadic call trace";
      description = "This package defines a class for monads which can keep a monadic call trace.\n\n* See the blog post <http://pepeiborra.posterous.com/monadic-stack-traces-that-make-a-lot-of-sense> for more information.\n\nA preprocessor is provided which can insert calls\nto \"Control.Monad.Loc.withLoc\" before every monadic statement in a module.\nTo invoke the preprocessor, add the pragma @OPTIONS_GHC -F -pgmF MonadLoc@  at the top of your Haskell files  together with an import for the \"Control.Monad.Loc\" module\n\nThis package provides no implementation of the \"Control.Monad.Loc.MonadLoc\" interface.\nCurrently the only package that does so is @control-monad-exception@,\nbut any other package can implement it and provide monadic call traces.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ] ++ (if flags.syb-in-base
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]
          else [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            ]);
        buildable = true;
        };
      exes = {
        "MonadLoc" = {
          depends = [
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            ];
          buildable = true;
          };
        };
      };
    }