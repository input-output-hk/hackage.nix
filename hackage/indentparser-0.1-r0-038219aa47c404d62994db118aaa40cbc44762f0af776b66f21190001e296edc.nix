{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { examples = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "indentparser";
        version = "0.1";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "I, Piyush P Kurur, hereby release the software to the public domain\nI, however, do not give any warrenties what so ever. Please refer to the\naccompanying file UNLICENSE for more details.\nAlso see http://cr.yp.to/publicdomain.html for an explanation of\nwhat it means to release under public domain in the United States\nof America.";
      maintainer = "ppk@cse.iitk.ac.in";
      author = "Piyush P Kurur";
      homepage = "http://www.cse.iitk.ac.in/users/ppk/code/HASKELL/indentparser";
      url = "";
      synopsis = "A parser for indentation based structures";
      description = "This is a complete rewrite of the Indentparser\npackage. Using the monad transformer structer of parsec 3, the\ncode has been greatly simplified. Besides these changes\nthe code is now in public domain.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
        ];
      };
      exes = {
        "simple-expression" = {
          depends = pkgs.lib.optional (!(!flags.examples)) (hsPkgs.parsec);
        };
      };
    };
  }