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
    flags = {
      libiconv = true;
      drunken-bishop = true;
      magic = false;
      irilinks = false;
    };
    package = {
      specVersion = "1.18";
      identifier = { name = "diohsc"; version = "0.1.16"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "mbays@sdf.org";
      author = "Martin Bays";
      homepage = "https://mbays.sdf.org/diohsc";
      url = "";
      synopsis = "Gemini client";
      description = "Line-based command-oriented interactive client for the gemini protocol.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "diohsc" = {
          depends = ((([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."asn1-encoding" or (errorHandler.buildDepError "asn1-encoding"))
            (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."hourglass" or (errorHandler.buildDepError "hourglass"))
            (hsPkgs."mime" or (errorHandler.buildDepError "mime"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."rset" or (errorHandler.buildDepError "rset"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."crypton-x509" or (errorHandler.buildDepError "crypton-x509"))
            (hsPkgs."crypton-x509-store" or (errorHandler.buildDepError "crypton-x509-store"))
            (hsPkgs."crypton-x509-validation" or (errorHandler.buildDepError "crypton-x509-validation"))
          ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ pkgs.lib.optional (flags.magic) (hsPkgs."magic" or (errorHandler.buildDepError "magic"))) ++ pkgs.lib.optional (flags.libiconv) (hsPkgs."iconv" or (errorHandler.buildDepError "iconv"))) ++ pkgs.lib.optional (flags.drunken-bishop) (hsPkgs."drunken-bishop" or (errorHandler.buildDepError "drunken-bishop"));
          buildable = true;
        };
      };
    };
  }