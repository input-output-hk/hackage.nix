{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "THEff"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "kolodeznydiver@gmail.com";
      author = "Kolodezny Diver";
      homepage = "";
      url = "";
      synopsis = "TH implementation of effects.";
      description = "This package implements effects, as alternative to monad\ntransformers. Actually, the effects themselves are created without\nthe use of TH, but the binding of nested effects described by\nmkEff splice. For example.\n\n> mkEff \"MyReader\"    ''Reader    ''Int       ''Lift\n> mkEff \"SomeState\"   ''State     ''Bool      ''MyReader\n> mkEff \"OtherRdr\"    ''Reader    ''Float     ''SomeState\n>\n> main:: IO ()\n> main = do\n>     r <- runMyReader  100\n>        \$ runSomeState False\n>        \$ runOtherRdr  pi  \$ do\n>             i :: Int   <- ask                    -- MyReader\n>             f :: Float <- ask                    -- OtherRdr\n>             b <- get                             -- SomeState\n>             put \$ not b                          -- SomeState\n>             lift \$ putStrLn \"print from effect!\" -- Lift\n>             return \$ show \$ fromIntegral i * f\n>     print r\n\nFor more information about extensible effects , see the original paper at\n<http://okmij.org/ftp/Haskell/extensible/exteff.pdf>.\nBut, this package is significantly different from the original.\nIt uses a chains of ordinary GADTs created by TH.\nNo Typeable, unsafe... , ExistentialQuantification ...";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }