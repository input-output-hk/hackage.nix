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
        name = "mac";
        version = "0.1.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "russo@chalmers.se";
      author = "Alejandro Russo";
      homepage = "";
      url = "";
      synopsis = "Static Mandatory Access Control in Haskell";
      description = "The MAC library implements /Mandatory Access Control/ concepts in\nHaskell.  It leverages Haskell type-system to restrict how data gets\npropagated within programs and ensures that sensitive data cannot be\nleaked by malicious or buggy code. The library enables untrusted code,\ni.e., code written by someone else, to securely manipulate sensitive\ndata while preserving its confidentiality.\n\nThe library provides secure versions of advance programming languages\nfeatures like references, exceptions, and concurrency. This package is\nthe accompanying code for the paper\n<http://www.cse.chalmers.se/~russo/publications_files/pearl-russo.pdf Functional Pearl: Two can keep a secret, if one of them uses Haskell>.";
      buildType = "Simple";
    };
    components = {
      "mac" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.transformers)
        ];
      };
    };
  }