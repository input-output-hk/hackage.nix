{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "gravatar";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<dons@galois.com>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/gravatar";
      url = "";
      synopsis = "Find the url of the gravatar associated with an email address.";
      description = "Gravatars (<http://gravatar.com>) are globally unique images associated with an email\naddress, widely used in social networking sites. This library\nlets you find the URL of a gravatar .png associated with an email\naddress.";
      buildType = "Simple";
    };
    components = {
      "gravatar" = {
        depends  = [
          (hsPkgs.nano-md5)
          (hsPkgs.network)
        ] ++ (if _flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }