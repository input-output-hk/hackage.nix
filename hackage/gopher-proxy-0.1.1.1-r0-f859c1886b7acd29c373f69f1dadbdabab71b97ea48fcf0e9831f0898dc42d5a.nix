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
        name = "gopher-proxy";
        version = "0.1.1.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "git@lukasepple.de";
      author = "sternenseemann";
      homepage = "https://github.com/sternenseemann/gopher-proxy";
      url = "";
      synopsis = "proxy gopher over http";
      description = "@gopher-proxy@ allows to proxy gopher over HTTP, which is mainly useful for HTTP-ifying a specific gopher space.\n\nA simple invocation looks like this:\n\n@\ngopher-proxy --host example.org --http-port 8080\n@\n\nIn this particular example @gopher-proxy@ does the following things:\n\n* Takes HTTP requests on @127.0.0.1:8080@ (to be used by a proxying web server, like nginx), converts those to gopher requests to @example.org@ and returns the gopher responses as HTTP responses\n\n* Links menu items pointing to external servers to @gopher://@ URLs (this ensures that only one gopher server is proxied) and recognizes <https://en.wikipedia.org/wiki/Gopher_(protocol)#URL_links URL links> which are converted to normal HTML links\n\n* Tries to guess the correct mime-type for every gopher-served file (as it is not included in the response) and wraps text files in a HTML container.\n\n* And generally works hard to offer the best HTTP equivalent of a given gopher space :)\n\nTo learn about the other parameters for tweaking the behavior of @gopher-proxy@ <#readme see the readme>.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gopher-proxy" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.http-types)
            (hsPkgs.lucid)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.network)
            (hsPkgs.attoparsec)
            (hsPkgs.errors)
            (hsPkgs.mime-types)
            (hsPkgs.optparse-applicative)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }