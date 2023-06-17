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
    flags = { network-bsd = true; };
    package = {
      specVersion = "1.22";
      identifier = { name = "HaskellNet"; version = "0.6.1.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006 Jun Mukai";
      maintainer = "Alexander Vershilov <alexander.vershilov@sirius.online>,\nJonathan Daugherty <cygnus@foobox.com>,\nLeza Morais Lutonda <lemol-c@outlook.com>";
      author = "Jun Mukai";
      homepage = "https://github.com/qnikst/HaskellNet";
      url = "";
      synopsis = "Client support for POP3, SMTP, and IMAP";
      description = "This package provides client support for the POP3,\nSMTP, and IMAP protocols.\n\nFull examples can be found in the <https://github.com/qnikst/HaskellNet/tree/master/example repository>.\nAdditional documentation on the major updates can be found in the\n<https://github.com/qnikst/HaskellNet/blob/master/Updating.md Updating.md> file";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."cryptohash-md5" or (errorHandler.buildDepError "cryptohash-md5"))
          (hsPkgs."base64" or (errorHandler.buildDepError "base64"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs."fail" or (errorHandler.buildDepError "fail"))) ++ (if flags.network-bsd
          then [
            (hsPkgs."network-bsd" or (errorHandler.buildDepError "network-bsd"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ]);
        buildable = true;
        };
      };
    }