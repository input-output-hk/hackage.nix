{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "ctemplate";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Adam Langley <agl@imperialviolet.org>";
      homepage = "http://darcs.imperialviolet.org/ctemplate";
      url = "";
      synopsis = "Binding to the Google ctemplate library";
      description = "CTemplate is the library that Google uses to render most of their sites\n(including the www.google.com search). It's a simple templating system, but\nincludes many, easy to use, escaping functions.";
      buildType = "Simple";
    };
    components = {
      "ctemplate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs.ctemplate) ];
      };
    };
  }