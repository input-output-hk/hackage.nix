{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "shakespeare-text"; version = "0.10.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Greg Weber <greg@gregweber.info>";
      author = "Greg Weber <greg@gregweber.info>";
      homepage = "http://www.yesodweb.com/book/templates";
      url = "";
      synopsis = "Interpolation with quasi-quotation: put variables strings";
      description = "interpolation with quasi-quotation: stick haskell variables into haskell strings\n\nNote there is no dependency on haskell-src-extras. If you don't mind that dependency, you may want to look at using these packages: Interpolation, interpolatedstring-perl6, interpolatedstring-qq.\n\nThis package has 1 other general feature that those others may not (but would be easy to duplicate): instead of using quasi-quoting you can also use an external file. It also has url/embeding interpolation, with \\@ and \\^, which are used in Yesod.\n\nThis package also uses blaze-builder for efficiently constructing strings (I am not sure what the other packages use). This might be of interest to you for large templates or performance sensitive code, or otherwise having a nice interface to blaze-builder\n\nShakespeare is a template family for type-safe, efficient templates with simple variable interpolation . Shakespeare templates can be used inline with a quasi-quoter or in an external file. Shakespeare interpolates variables according to the type being inserted.\nIn this case, the variable type needs a ToText instance.\n\nPlease see http://docs.yesodweb.com/book/templates for a more thorough description and examples of the shakespeare family of template languages.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."shakespeare-text" or (errorHandler.buildDepError "shakespeare-text"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }