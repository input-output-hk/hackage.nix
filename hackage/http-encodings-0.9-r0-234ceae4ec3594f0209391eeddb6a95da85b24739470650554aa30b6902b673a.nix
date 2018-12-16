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
      specVersion = "1.10";
      identifier = {
        name = "http-encodings";
        version = "0.9";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012-2013 Stevens Institute of Technology";
      maintainer = "Andrey Chudnov <oss@chudnov.com>";
      author = "Andrey Chudnov";
      homepage = "http://github.com/achudnov/http-encodings";
      url = "";
      synopsis = "A library for encoding and decoding bodies of HTTP messages";
      description = "A library for encoding and decoding bodies of HTTP messages, designed to work with the HTTP and http-server libraries. No heuristic encoding detection at this time. WANTED: a library implementing the Unix \"compress\" command encoding/decoding (or the LZW algorithm).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HTTP)
          (hsPkgs.bytestring)
          (hsPkgs.parsec)
          (hsPkgs.utf8-string)
          (hsPkgs.iconv)
          (hsPkgs.zlib)
          (hsPkgs.mtl)
          (hsPkgs.mime)
        ];
      };
    };
  }