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
    flags = { executable = false; network-uri = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "texmath"; version = "0.8.6.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane, Matthew Pickering";
      homepage = "http://github.com/jgm/texmath";
      url = "";
      synopsis = "Conversion between formats used to represent mathematics.";
      description = "The texmath library provides functions to read and\nwrite TeX math, presentation MathML, and OMML (Office\nMath Markup Language, used in Microsoft Office).\nSupport is also included for converting math formats\nto pandoc's native format (allowing conversion, via\npandoc, to a variety of different markup formats).\nThe TeX reader supports basic LaTeX and AMS extensions,\nand it can parse and apply LaTeX macros.\n(See <http://johnmacfarlane.net/texmath here> for a live\ndemo of bidirectional conversion between LaTeX\nand MathML.)\n\nThe package also includes several utility modules which\nmay be useful for anyone looking to manipulate either\nTeX math or MathML.  For example, a copy of the MathML\noperator dictionary is included.\n\nUse the @executable@ flag to install a standalone\nexecutable, @texmath@, that by default reads a LaTeX\nformula from @stdin@ and writes MathML to @stdout@.\nWith flags all the functionality exposed by\n'Text.TeXMath' can be accessed through this executable.\n(Use the @--help@ flag for a description of all\nfunctionality)\n\nThe @texmath@ executable can also be used as a CGI\nscript, when renamed as @texmath-cgi@.\nIt will expect query parameters for @from@, @to@,\n@input@, and optionally @inline@, and return a JSON\nobject with either @error@ and a message or\n@success@ and the converted result.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
        };
      exes = {
        "texmath" = {
          depends = (pkgs.lib).optionals (flags.executable) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."texmath" or (errorHandler.buildDepError "texmath"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ] ++ (if flags.network-uri
            then [
              (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
              ]
            else [
              (hsPkgs."network" or (errorHandler.buildDepError "network"))
              ]);
          buildable = if flags.executable then true else false;
          };
        };
      tests = {
        "test-texmath" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."texmath" or (errorHandler.buildDepError "texmath"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            ];
          buildable = true;
          };
        };
      };
    }