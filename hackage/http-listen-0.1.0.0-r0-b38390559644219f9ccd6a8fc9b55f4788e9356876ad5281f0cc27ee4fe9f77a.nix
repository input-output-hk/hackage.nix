{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "http-listen"; version = "0.1.0.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "♡ Copying is an act of love. Please copy, reuse and share.";
      maintainer = "fr33domlover@riseup.net";
      author = "fr33domlover";
      homepage = "http://rel4tion.org/projects/http-listen/";
      url = "";
      synopsis = "Listen to HTTP requests and handle them in arbitrary ways.";
      description = "In HTTP connections, there is a client side which sends requests (such as GET\nand POST), and a server side which receives and parses them. Often, the\nserver side is a web server which responds to requests by sending some HTML\npages back. But sometimes it's just a listener.\n\nFor example, a Git server may offer web hooks. It could send a POST request\nwhenever a commit is made, or a new repository is created. You then set up a\nprogram that listens to these POSTs and reacts by reporting them to the\nproject's IRC channel or a mailing list.\n\nMost HTTP packages assume a typical web server which handles requests by\nreturning HTTP responses. This package tries to fill a gap by providing an\nAPI for simple listeners which don't necessarily serve web pages, and can do\nthings like reporting to IRC.\n\nSome features are missing and will be added soon:\n\n* Connection timeouts\n* Logging (currently errors are written to stdout, no other logging done)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }