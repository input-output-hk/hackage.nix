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
        version = "0.4.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "http://www.yesodweb.com/";
      url = "";
      synopsis = "Web application deployment manager, focusing on Haskell web frameworks";
      description = "Handles deployment of web apps, providing a reverse proxy to achieve zero downtime deployments. For more information, please see the README on Github: <https://github.com/snoyberg/keter#readme>\n\nRelease history:\n\n[0.4.0] Switch to fsnotify to get cross-platform support. No longer using raw proxies, but instead WAI proxies.\n\n[0.3.7] Sending a HUP signal reloads the list of deployed apps. This is useful for circumstances where inotify does not work correctly, such as on file systems which do not support it.\n\n[0.3.5] You can now create Keter bundles without any applications. These can contain static hosts and redirects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
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
          (hsPkgs.network-conduit)
          (hsPkgs.network-conduit-tls)
          (hsPkgs.http-reverse-proxy)
          (hsPkgs.unix-process-conduit)
          (hsPkgs.unix)
          (hsPkgs.wai-app-static)
          (hsPkgs.wai)
          (hsPkgs.http-types)
          (hsPkgs.regex-tdfa)
          (hsPkgs.attoparsec)
          (hsPkgs.http-conduit)
          (hsPkgs.case-insensitive)
          (hsPkgs.array)
          (hsPkgs.mtl)
          (hsPkgs.warp)
          (hsPkgs.warp-tls)
        ];
      };
      exes = {
        "keter" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.keter)
          ];
        };
      };
    };
  }