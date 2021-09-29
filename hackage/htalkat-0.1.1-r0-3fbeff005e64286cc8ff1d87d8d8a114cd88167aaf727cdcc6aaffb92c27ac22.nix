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
    flags = { curses = true; };
    package = {
      specVersion = "1.18";
      identifier = { name = "htalkat"; version = "0.1.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "mbays@sdf.org";
      author = "Martin Bays";
      homepage = "https://mbays.sdf.org/htalkat";
      url = "";
      synopsis = "Talk across TLS";
      description = "Server and curses client for the \"talkat\" (Talk Across TLS) real-time text communication protocol.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "htalkat" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."asn1-encoding" or (errorHandler.buildDepError "asn1-encoding"))
            (hsPkgs."asn1-types" or (errorHandler.buildDepError "asn1-types"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."data-hash" or (errorHandler.buildDepError "data-hash"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
            (hsPkgs."filelock" or (errorHandler.buildDepError "filelock"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hourglass" or (errorHandler.buildDepError "hourglass"))
            (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-simple" or (errorHandler.buildDepError "network-simple"))
            (hsPkgs."pem" or (errorHandler.buildDepError "pem"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."rset" or (errorHandler.buildDepError "rset"))
            (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."tls" or (errorHandler.buildDepError "tls"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."x509" or (errorHandler.buildDepError "x509"))
            (hsPkgs."x509-validation" or (errorHandler.buildDepError "x509-validation"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"))) ++ (pkgs.lib).optional (flags.curses) (hsPkgs."hscurses" or (errorHandler.buildDepError "hscurses"));
          pkgconfig = (pkgs.lib).optional (flags.curses) (pkgconfPkgs."ncursesw" or (errorHandler.pkgConfDepError "ncursesw"));
          buildable = true;
          };
        };
      };
    }