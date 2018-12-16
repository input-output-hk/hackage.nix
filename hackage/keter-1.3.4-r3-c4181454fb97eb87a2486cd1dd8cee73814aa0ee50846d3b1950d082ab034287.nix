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
        name = "keter";
        version = "1.3.4";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Web application deployment manager, focusing on Haskell web frameworks";
      description = "Handles deployment of web apps, providing a reverse proxy to achieve zero downtime deployments. For more information, please see the README on Github: <https://github.com/snoyberg/keter#readme>\n\nRelease history:\n\n[1.3.4] Support for overriding external ports. Support for keter.yml in addition to keter.yaml. Case insensitive hostname lookups.\n\n[1.3.3] Set the X-Forwarded-Proto header\n\n[1.3.2] Enable GZIP middleware\n\n[1.3.1] Upgrade to WAI 3.0\n\n[1.3.0] Upgrade to conduit 1.1\n\n[1.0.1] Permit use of wildcard subdomains and exceptions to wildcards. Convert internal strings to use Data.Text in more places. (Although internationalized domain names are not supported unless entered in punycode in configuration files.)\n\n[1.0.0] Significant overhaul. We now support monitoring of much more arbitrary jobs (e.g., background tasks), have a proper plugin system (PostgreSQL is no longer a required component), and have a much better system for tracking hostname mapping changes.\n\n[0.4.0] Switch to fsnotify to get cross-platform support. No longer using raw proxies, but instead WAI proxies.\n\n[0.3.7] Sending a HUP signal reloads the list of deployed apps. This is useful for circumstances where inotify does not work correctly, such as on file systems which do not support it.\n\n[0.3.5] You can now create Keter bundles without any applications. These can contain static hosts and redirects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.transformers)
          (hsPkgs.process)
          (hsPkgs.random)
          (hsPkgs.data-default)
          (hsPkgs.filepath)
          (hsPkgs.zlib)
          (hsPkgs.network)
          (hsPkgs.time)
          (hsPkgs.tar)
          (hsPkgs.template-haskell)
          (hsPkgs.blaze-builder)
          (hsPkgs.yaml)
          (hsPkgs.unix-compat)
          (hsPkgs.fsnotify)
          (hsPkgs.system-filepath)
          (hsPkgs.system-fileio)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.network-conduit-tls)
          (hsPkgs.http-reverse-proxy)
          (hsPkgs.unix)
          (hsPkgs.wai-app-static)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.http-types)
          (hsPkgs.regex-tdfa)
          (hsPkgs.attoparsec)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.case-insensitive)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.warp)
          (hsPkgs.warp-tls)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.stm)
          (hsPkgs.async)
          (hsPkgs.lifted-base)
        ];
      };
      exes = {
        "keter" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.keter)
            (hsPkgs.system-filepath)
            (hsPkgs.data-default)
          ];
        };
        "hello" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.keter)
            (hsPkgs.warp)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
            (hsPkgs.http-types)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.data-default)
            (hsPkgs.transformers)
          ];
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.conduit)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.unix)
            (hsPkgs.keter)
          ];
        };
      };
    };
  }