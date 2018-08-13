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
      specVersion = "1.10";
      identifier = {
        name = "acme-lookofdisapproval";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Anton Nikishaev";
      maintainer = "Anton Nikishaev <me@lelf.lu>";
      author = "Anton Nikishaev <me@lelf.lu>";
      homepage = "https://github.com/llelf/acme-lookofdisapproval";
      url = "";
      synopsis = "Express your disapproval";
      description = "The Acme.LookOfDisapproval module provides one function &#xca0;_&#xca0;,\nwhich lets you to express your profound disapproval.";
      buildType = "Simple";
    };
    components = {
      "acme-lookofdisapproval" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }