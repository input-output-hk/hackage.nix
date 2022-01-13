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
    flags = { executable = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "texmath"; version = "0.12.4"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "jgm@berkeley.edu";
      author = "John MacFarlane, Matthew Pickering";
      homepage = "http://github.com/jgm/texmath";
      url = "";
      synopsis = "Conversion between math formats.";
      description = "The texmath library provides functions to read\nand write TeX math, presentation MathML, and OMML (Office\nMath Markup Language, used in Microsoft Office).  Support is also\nincluded for converting math formats to Gnu eqn and to pandoc's\nnative format (allowing conversion, via pandoc, to a variety of\ndifferent markup formats).  The TeX reader supports basic LaTeX\nand AMS extensions, and it can parse and apply LaTeX macros.\n(See <http://johnmacfarlane.net/texmath here> for a live demo of\nbidirectional conversion between LaTeX and MathML.)\n\nThe package also includes several utility modules which may be\nuseful for anyone looking to manipulate either TeX math or\nMathML.  For example, a copy of the MathML operator dictionary is\nincluded.  .  Use the @executable@ flag to install a standalone\nexecutable, @texmath@, that by default reads a LaTeX formula from\n@stdin@ and writes MathML to @stdout@.  With flags all the\nfunctionality exposed by 'Text.TeXMath' can be accessed through\nthis executable.  (Use the @--help@ flag for a description of all\nfunctionality)\n\nThe @texmath@ executable can also be used as a CGI script, when\nrenamed as @texmath-cgi@.  It will expect query parameters for\n@from@, @to@, @input@, and optionally @inline@, and return a JSON\nobject with either @error@ and a message or @success@ and the\nconverted result.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
          (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."split" or (errorHandler.buildDepError "split"))
          ];
        buildable = true;
        };
      exes = {
        "texmath" = {
          depends = (pkgs.lib).optionals (flags.executable) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."texmath" or (errorHandler.buildDepError "texmath"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
            ];
          buildable = if flags.executable then true else false;
          };
        };
      tests = {
        "test-texmath" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."texmath" or (errorHandler.buildDepError "texmath"))
            (hsPkgs."xml" or (errorHandler.buildDepError "xml"))
            (hsPkgs."utf8-string" or (errorHandler.buildDepError "utf8-string"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }