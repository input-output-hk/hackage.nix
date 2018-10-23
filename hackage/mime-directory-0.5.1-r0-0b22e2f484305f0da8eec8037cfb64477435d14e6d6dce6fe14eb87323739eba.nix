{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = {
        name = "mime-directory";
        version = "0.5.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "(c) 2008. Mathieu Boespflug <mboes - at - tweag.net>";
      maintainer = "Mathieu Boespflug <mboes - at - tweag.net>";
      author = "Mathieu Boespflug";
      homepage = "http://code.haskell.org/~mboes/mime-directory.git";
      url = "";
      synopsis = "A library for parsing/printing the text/directory mime type.";
      description = "A library for parsing\\/printing the text\\/directory mime type.";
      buildType = "Simple";
    };
    components = {
      "mime-directory" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.regex-pcre)
          (hsPkgs.old-locale)
          (hsPkgs.time)
          (hsPkgs.containers)
          (hsPkgs.base64-string)
        ];
      };
    };
  }