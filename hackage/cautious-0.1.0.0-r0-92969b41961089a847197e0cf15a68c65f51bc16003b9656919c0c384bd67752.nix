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
        name = "cautious";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Nick Van den Broeck";
      maintainer = "nick.van.den.broeck666@gmail.com";
      author = "Nick Van den Broeck";
      homepage = "https://github.com/Nickske666/cautious#readme";
      url = "";
      synopsis = "Keep track of warnings and errors during calculations.";
      description = "A Cautious monad \"Monoid w => Cautious w e a\" which keeps track of the success of a task. The options are \"CautiousWarning w a\" (where \"CautiousWarning mempty a\" represents \"success\") and \"CautiousError e\". In addition, there is a monadtransformer \"Monad m, Monoid w => CautiousT w e m a\"";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.genvalidity)
          (hsPkgs.genvalidity-hspec-aeson)
          (hsPkgs.hspec)
          (hsPkgs.hspec-discover)
          (hsPkgs.transformers)
          (hsPkgs.validity)
        ];
      };
      tests = {
        "cautious-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.cautious)
            (hsPkgs.genvalidity)
            (hsPkgs.genvalidity-hspec)
            (hsPkgs.genvalidity-hspec-aeson)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.transformers)
            (hsPkgs.validity)
          ];
        };
      };
    };
  }