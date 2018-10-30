{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { old-base = false; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "flickr";
        version = "0.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "sof@forkIO.com";
      author = "Sigbjorn Finne <sof@forkIO.com>";
      homepage = "";
      url = "";
      synopsis = "Haskell binding to the Flickr API";
      description = "The flickr API binding lets you access flickr.com's\nresources and methods from Haskell.\nImplements the full API, as specified by <http://flickr.com/services/api/>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.HTTP)
          (hsPkgs.network)
          (hsPkgs.xml)
          (hsPkgs.mime)
          (hsPkgs.random)
          (hsPkgs.utf8-string)
          (hsPkgs.filepath)
        ] ++ [ (hsPkgs.base) ];
      };
      exes = {
        "showPublic" = {};
        "searchPics" = {};
        "gallery" = {
          depends  = [ (hsPkgs.xhtml) ];
        };
        "uploader" = {};
        "mtags" = {};
      };
    };
  }