{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "portable-lines"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Joseph Adams 2011";
      maintainer = "joeyadams3.14159@gmail.com";
      author = "Joey Adams";
      homepage = "";
      url = "";
      synopsis = "Alternative 'lines' implementation that understands CR-LF and CR";
      description = "Provides an alternative implementation of the 'Prelude.lines' function that\ntreats the following sequences as newline characters:\n\n* @\\\"\\\\r\\\\n\\\"@ (Windows style)\n\n* @\\\"\\\\r\\\"@ (Macintosh style, before OS X)\n\n* @\\\"\\\\n\\\"@ (Unix style)\n\nHaskell's IO system supports both platform-specific line ending conversion\n(by opening the file in \\\"text mode\\\"), and explicit setting of the newline\nmode for input and output (see 'System.IO.hSetNewlineMode').  However:\n\n* If you don't know the line ending format in advance, you would have to\nopen the file and detect the newline format manually.\n\n* ByteString currently honors neither of these; see\n<http://stackoverflow.com/questions/6837628>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          ];
        buildable = true;
        };
      };
    }