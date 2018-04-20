{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hsdns-cache";
          version = "1.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Vladimir Shabanov 2013";
        maintainer = "Vladimir Shabanov <vshabanoff@gmail.com>";
        author = "Vladimir Shabanov <vshabanoff@gmail.com>";
        homepage = "https://github.com/bazqux/hsdns-cache";
        url = "";
        synopsis = "Caching asynchronous DNS resolver.";
        description = "\nCaching asynchronous DNS resolver built on top of\nGNU ADNS <http://www.chiark.greenend.org.uk/~ian/adns/>.\n\n* Resolves several IP addresses for one host (if available)\nin round-robin fashion.\n\n* Throttles number of parallel requests (so DNS resolving continues to work\neven under heavy load).\n\n* Errors are cached too (for one minute).\n\n* Handles CNAMEs (@hsdns@ returns error for them).\n\nThis cache is tested in a long running web-crawler\n(used in <https://bazqux.com>) so it should be safe to use it in real world\napplications.";
        buildType = "Simple";
      };
      components = {
        hsdns-cache = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.hsdns
            hsPkgs.network
            hsPkgs.time
            hsPkgs.SafeSemaphore
          ];
        };
      };
    }