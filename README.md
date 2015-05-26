doorman Cookbook
=====================
Installs doorman. A javascript web proxy that uses ouath via google, github and others.

Read about doorman here https://github.com/movableink/doorman.

Requirements
------------
OS:

Currently only supports CentOS 7. Generate a pull request or comment if you would like additional OS support.

Attributes
----------
#### doorman::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['doorman']['listen_port']</tt></td>
    <td>Number</td>
    <td>The port to listen on</td>
    <td><tt>80</tt></td>
  </tr>
  <tr>
    <td><tt>['doorman']['secure_port']</tt></td>
    <td>Number</td>
    <td>The port for SSL communication</td>
    <td><tt>443</tt></td>
  </tr>
  <tr>
    <td><tt>['doorman']['hostname']</tt></td>
    <td>String</td>
    <td>Full hostname for OAuth callbacks. This is autodetected if nil</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['doorman']['proxy_to_host']</tt></td>
    <td>String</td>
    <td>The ultimate destination behind the proxy</td>
    <td><tt>localhost</tt></td>
  </tr>
  <tr>
    <td><tt>['doorman']['proxy_to_port']</tt></td>
    <td>String</td>
    <td>The ultimate destination port behind the proxy</td>
    <td><tt>8080</tt></td>
  </tr>
  <tr>
    <td><tt>['doorman']['session_maxage']</tt></td>
    <td>Number</td>
    <td>Session duration</td>
    <td><tt>4 * 24 * 60 * 60 * 1000</tt></td>
  </tr>
  <tr>
    <td><tt>['doorman']['session_secret']</tt></td>
    <td>String</td>
    <td>Random Secret (Set this to something different!)</td>
    <td><tt>hgkhjldsiu8945jklemn578954892NCANWQOrnej</tt></td>
  </tr>
  <tr>
    <td><tt>['doorman']['use_ssl']</tt></td>
    <td>Bool</td>
    <td>Whether to use SSL</td>
    <td><tt>false</tt></td>
  </tr>
  <tr>
    <td><tt>['doorman']['keyfile']</tt></td>
    <td>String</td>
    <td>Path to keyfile</td>
    <td><tt>/path/to/keyfile</tt></td>
  </tr>
  <tr>
    <td><tt>['doorman']['certfile']</tt></td>
    <td>String</td>
    <td>Path to certfile</td>
    <td><tt>/path/to/certfile</tt></td>
  </tr>
  <tr>
    <td><tt>['doorman']['cafile']</tt></td>
    <td>String</td>
    <td>Path to CA file (if necessary). Nil means no cafile.</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['doorman']['bypass_paths']</tt></td>
    <td>String</td>
    <td>Comma separated list of paths which bypass the proxy (if necessary). Nil means no bypass paths.</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['doorman']['modules']</tt></td>
    <td>Hash</td>
    <td>A hash of modules for authentication. See the doorman documentation https://github.com/movableink.</td>
    <td><tt>"github" => "appId: 'YOUR-GITHUB-APP-ID',
    appSecret: 'YOUR-GITHUB-APP-SECRET',
    entryPath: '/oauth/github',
    callbackPath: '/oauth/github/callback',
    requiredOrganization: 'YOUR-ORGANIZATION-NAME'"</tt></td>
  </tr>
</table>

Usage
-----
#### doorman::default
Include `doorman` in your node's `run_list`:

At a minimum you must set these attributes:
session\_secret
modules

License and Authors
-------------------
Licensed under the MIT License. See LICENSE.

Authors:
Ivan Stanojevic
