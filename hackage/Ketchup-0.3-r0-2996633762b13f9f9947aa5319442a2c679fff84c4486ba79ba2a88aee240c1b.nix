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
      specVersion = "1.6";
      identifier = { name = "Ketchup"; version = "0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "zikyky@gmail.com";
      author = "Alessandro Gatti";
      homepage = "https://github.com/Hamcha/Ketchup";
      url = "";
      synopsis = "A super small web framework for those who don't like big and fancy codebases";
      description = "Ketchup is a very small HTTP server implementation, currently under 400 LoC total!\n\nKetchup is also made to be as modular and embeddable as possible, if you want a cabal-free Haskell app, just take those two/three files you need and put it in your project!\n\nCurrently Ketchup comes with:\n\n* Basic httpd functionality (IPV4 only for now)\n\n* Regexp routing with parameters (ie. \\`/user/:name/(.\\*)\\`)\n\n* Static file handler (ie. \\`static \\\".\\\"\\` as route/handler)\n\nDependencies\n\nThe core parts of Ketchup are all depedency free, that includes Ketchup.Httpd and Ketchup.Utils (and to a certain extent, Ketchup.Chunked).\nThe dependencies required are for the following modules:\n\n* Ketchup.Routing (uses regex-pcre-builtin, This can ben modified to use builtin POSIX regexp)\n\n* Ketchup.Static (uses mime-types)\n\n* Ketchup.Auth (uses base64-bytestring)\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base64-bytestring" or (errorHandler.buildDepError "base64-bytestring"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."mime-types" or (errorHandler.buildDepError "mime-types"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."regex-pcre-builtin" or (errorHandler.buildDepError "regex-pcre-builtin"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
    };
  }