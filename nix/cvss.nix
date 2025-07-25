{
  "0.1" = {
    sha256 = "b9e1b3caa1f22662244c2379f277d7689ed35368cd9de57584a380068a598d0a";
    revisions = {
      r0 = {
        nix = import ../hackage/cvss-0.1-r0-4a7b7fe43ca26ae617ad1e8d109765d4c84ed6c8ffd13e111e8be0ee5a2bbc6d.nix;
        revNum = 0;
        sha256 = "4a7b7fe43ca26ae617ad1e8d109765d4c84ed6c8ffd13e111e8be0ee5a2bbc6d";
      };
      default = "r0";
    };
  };
  "0.2.0.1" = {
    sha256 = "c66c60749fa796535adf724d7693bc3e36d0627c3baa8b8b9e281b4a99188e9c";
    revisions = {
      r0 = {
        nix = import ../hackage/cvss-0.2.0.1-r0-6c152589382b39a4d2312815eda951ba527d495270bb4d2822c73cc866915365.nix;
        revNum = 0;
        sha256 = "6c152589382b39a4d2312815eda951ba527d495270bb4d2822c73cc866915365";
      };
      default = "r0";
    };
  };
}