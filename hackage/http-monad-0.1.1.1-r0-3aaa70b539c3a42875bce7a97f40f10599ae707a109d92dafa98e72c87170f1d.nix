{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = false; buildtestserver = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "http-monad"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <http@henning-thielemann.de>";
      author = "Henning Thielemann <http@henning-thielemann.de>";
      homepage = "";
      url = "";
      synopsis = "Monad abstraction for HTTP allowing lazy transfer and non-I/O simulation";
      description = "This library implements a monad class with various interesting instances:\n\n* Lazy I/O allows for fetching documents via HTTP on demand\n\n* Non-I/O allows for testing HTTP communication without any IO action\n\nBy using this monad you can implement HTTP communication in a very general way.\nYou may add further functionality by adding custom sub-classes.\n\nWe inherit all content data types from the HTTP-4000 package,\nsuch as String as well as strict and lazy ByteString.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."explicit-exception" or ((hsPkgs.pkgs-errors).buildDepError "explicit-exception"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."lazyio" or ((hsPkgs.pkgs-errors).buildDepError "lazyio"))
          ] ++ (if flags.splitbase
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]
          else [
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]);
        buildable = true;
        };
      exes = {
        "infinite-httpd" = {
          depends = (pkgs.lib).optional (flags.buildtestserver) (hsPkgs."httpd-shed" or ((hsPkgs.pkgs-errors).buildDepError "httpd-shed"));
          buildable = if flags.buildtestserver then true else false;
          };
        };
      };
    }