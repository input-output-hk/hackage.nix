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
      specVersion = "1.8";
      identifier = {
        name = "codec-mbox";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Nicolas Pouillard";
      maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
      author = "Nicolas Pouillard";
      homepage = "";
      url = "";
      synopsis = "A library to read and write mailboxes in mbox format";
      description = "The library provides functions to read, write, and\nmanipulate mbox's. This library focuses on three points:\nrobustness, efficency, and scalability. It's using lazy\nbytestrings and can handle very big mailboxes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }