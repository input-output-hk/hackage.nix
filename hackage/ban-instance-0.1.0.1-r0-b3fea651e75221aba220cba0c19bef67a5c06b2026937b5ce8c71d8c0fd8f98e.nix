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
      specVersion = "1.10";
      identifier = { name = "ban-instance"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2017 Data61";
      maintainer = "jack.kelly@data61.csiro.au";
      author = "Jack Kelly, Alex Mason";
      homepage = "https://github.com/qfpl/ban-instance#readme";
      url = "";
      synopsis = "For when a type should never be an instance of a class";
      description = "<<https://raw.githubusercontent.com/qfpl/assets/master/data61-transparent-bg.png>>\n\nBanning an instance allows the programmer to actively declare that\nan instance should never be defined, and provide a reason why:\n\n@\ndata Foo = -- ...\n\$(banInstance [t|ToJSON Foo|] \"why ToJSON Foo should never be defined\")\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "ban-instance-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ban-instance" or (errorHandler.buildDepError "ban-instance"))
            ];
          buildable = true;
          };
        };
      };
    }