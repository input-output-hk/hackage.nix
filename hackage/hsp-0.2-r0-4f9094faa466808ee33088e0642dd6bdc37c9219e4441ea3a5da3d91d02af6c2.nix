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
        name = "hsp";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Niklas Broberg <nibro@cs.chalmers.se>";
      author = "Niklas Broberg";
      homepage = "http://www.cs.chalmers.se/~d00nibro/hsp/";
      url = "";
      synopsis = "Haskell Server Pages is a library for writing dynamic server-side web pages.";
      description = "Haskell Server Pages (HSP) is an extension of vanilla Haskell, targetted at the task of\nwriting dynamic server-side web pages. Features include:\n\n* Embedded XML syntax\n\n* A (low-to-mid-level) programming model for writing dynamic web pages\n\n* A runtime system, in the guise of a server utility, with support for:\n\no session (through cookies) and application (through the server) state\n\no interfacing to the HTTP request-response model\n\no on-request compilation of pages (using hs-plugins)\n\n* A cgi-handler utility for use where the server can't be used\n(i.e. if you have no control over the resident web server).\nSupports everything the server does except application state and\nsetting outgoing headers (plus it is atm considerably slower to respond).\n\nYou will also want 'hspr', the runtime utilities package. Consists of (the source for)\na server utility hspr and a cgi-handler hspr-cgi.\n\nFor details on usage, please see the website, and the author's thesis.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.harp)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.old-time)
          (hsPkgs.containers)
        ];
      };
    };
  }