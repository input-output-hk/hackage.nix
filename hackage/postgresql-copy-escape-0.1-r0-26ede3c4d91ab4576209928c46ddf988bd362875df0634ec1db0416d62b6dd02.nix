{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "postgresql-copy-escape";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Joseph Adams 2012";
      maintainer = "joeyadams3.14159@gmail.com";
      author = "Joey Adams";
      homepage = "https://github.com/joeyadams/hs-postgresql-copy-escape";
      url = "";
      synopsis = "Format data to feed to a PostgreSQL COPY FROM statement";
      description = "In PostgreSQL, the @COPY@ statement [1] provides a fast way to perform bulk\ninsertion and retrieval.  To use @COPY ... FROM@ for bulk insertion, the\ndata must first be converted to a special CSV-like format.\n\nThis package provides basic support for converting data to the format\nneeded by @COPY ... FROM@.  However, it does not provide the inverse\noperation (namely, reading data produced by @COPY ... TO@), nor does it\nsupport formatting customizations (what delimiter to use, how to represent\nNULL, etc.).\n\n\\[1\\]: <http://www.postgresql.org/docs/current/static/sql-copy.html>";
      buildType = "Simple";
    };
    components = {
      "postgresql-copy-escape" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }