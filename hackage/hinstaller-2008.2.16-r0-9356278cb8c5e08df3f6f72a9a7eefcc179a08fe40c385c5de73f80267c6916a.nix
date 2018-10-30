{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "hinstaller";
        version = "2008.2.16";
      };
      license = "LicenseRef-LGPL";
      copyright = "Matthew Sackman";
      maintainer = "Matthew Sackman <matthew@wellquite.org>";
      author = "Matthew Sackman";
      homepage = "http://www.wellquite.org/hinstaller/";
      url = "";
      synopsis = "Installer wrapper for Haskell applications";
      description = "This module allows you to incorporate arbitrary files into a haskell module\nduring compilation. The files are then available to you through functions\nwhich allows you to write installer-type applications which write out the\nfiles when run. Thus this can be considered in the same model as Java .jar\nfiles or executable zip or other file archives.\n\nThe current implementation is now reasonably efficient. However, it does\nrequire that you have a C compiler installed which can be invoked through\n@cc@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.Cabal)
          (hsPkgs.bytestring)
        ];
      };
    };
  }