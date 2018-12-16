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
        name = "happstack-fastcgi";
        version = "0.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "Tupil";
      maintainer = "ce [at] tupil.com, eml [at] tupil.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Happstack extension for use with FastCGI.";
      description = "This library lets you write FastCGI programs with Happstack. This package\nreuses the SimpleHTTP API, making it very easy to port stand-alone HTTP\nprograms to FastCGI.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cgi)
          (hsPkgs.fastcgi)
          (hsPkgs.mtl)
          (hsPkgs.happstack-server)
          (hsPkgs.containers)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
        ];
      };
    };
  }