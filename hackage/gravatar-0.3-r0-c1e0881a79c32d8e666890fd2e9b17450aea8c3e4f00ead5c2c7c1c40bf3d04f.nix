{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "gravatar";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<dons@galois.com>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/gravatar";
      url = "";
      synopsis = "Find the url of the gravatar associated with an email address.";
      description = "Gravatars (<http://gravatar.com>) are globally unique images\nassociated with an email address, widely used in social networking\nsites. This library lets you find the URL of a gravatar image\nassociated with an email address.\n\nTest coverage data for this library is available at:\n<http://code.haskell.org/~dons/tests/gravatar/hpc_index.html>\n";
      buildType = "Simple";
    };
    components = {
      "gravatar" = {
        depends  = [
          (hsPkgs.nano-md5)
          (hsPkgs.network)
        ] ++ (if flags.small_base
          then [
            (hsPkgs.base)
            (hsPkgs.bytestring)
          ]
          else [ (hsPkgs.base) ]);
      };
    };
  }