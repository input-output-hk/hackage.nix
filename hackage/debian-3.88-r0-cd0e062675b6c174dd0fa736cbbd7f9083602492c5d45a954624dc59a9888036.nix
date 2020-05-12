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
    flags = { network-uri = true; pretty-new = true; };
    package = {
      specVersion = "1.9";
      identifier = { name = "debian"; version = "3.88"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "David Fox <dsf@seereason.com>";
      author = "David Fox <dsf@seereason.com>, Jeremy Shaw <jeremy@seereason.com>, Clifford Beshers <beshers@seereason.com>";
      homepage = "https://github.com/ddssff/debian-haskell";
      url = "";
      synopsis = "Modules for working with the Debian package system";
      description = "This library includes modules covering some basic data types defined by\nthe Debian policy manual - version numbers, control file syntax, etc.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."bzlib" or (errorHandler.buildDepError "bzlib"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."process-extras" or (errorHandler.buildDepError "process-extras"))
          (hsPkgs."pureMD5" or (errorHandler.buildDepError "pureMD5"))
          (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."Unixutils" or (errorHandler.buildDepError "Unixutils"))
          (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
          ] ++ (if flags.network-uri
          then [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            ]
          else [
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            ])) ++ (if flags.pretty-new
          then [ (hsPkgs."pretty" or (errorHandler.buildDepError "pretty")) ]
          else [
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
            ]);
        buildable = true;
        };
      exes = {
        "fakechanges" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."debian" or (errorHandler.buildDepError "debian"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        "debian-report" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."debian" or (errorHandler.buildDepError "debian"))
            (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ];
          buildable = true;
          };
        "apt-get-build-depends" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."debian" or (errorHandler.buildDepError "debian"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            ];
          buildable = true;
          };
        };
      tests = {
        "debian-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."debian" or (errorHandler.buildDepError "debian"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ] ++ (if flags.pretty-new
            then [ (hsPkgs."pretty" or (errorHandler.buildDepError "pretty")) ]
            else [
              (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
              (hsPkgs."prettyclass" or (errorHandler.buildDepError "prettyclass"))
              ]);
          buildable = true;
          };
        };
      };
    }