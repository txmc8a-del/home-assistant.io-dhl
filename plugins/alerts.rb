tcp-port-used
A simple Node.js module to check if a TCP port is already bound.
Version 1.0.2 published 2020-12-15 by stdarg
Maintainers: stdarg
Keywords: tcp port available free check networking
https://npm.im/tcp-port-used

react-native-tcp-socket
React Native TCP socket API for Android & iOS with SSL/TLS support
Version 6.4.1 published 2026-01-16 by GitHub Actions
Maintainers: rapsssito
Keywords: react-native iOS Android tcp-socket tls ssl tcp-server tcp-client tcp react-native-library
https://npm.im/react-native-tcp-socket

@chakra-ui/css-reset
CSS reset component for Chakra UI
Version 2.3.0 published 2023-09-08 by segunadebayo
Maintainers: segunadebayo schroetier
Keywords: theme theming ui mode chakra ui css reset
https://npm.im/@chakra-ui/css-reset

@achrinza/node-ipc
A nodejs module for local and remote Inter Process Communication (IPC), Neural Networking, and able to facilitate machine learning.
Version 9.2.10 published 2025-12-21 by achrinza
Maintainers: achrinza achrinza-bot
Keywords: IPC Neural Networking Machine Learning inter process communication unix windows win socket TCP UDP domain sockets threaded communication multi process shared memory
https://npm.im/@achrinza/node-ipc

tcp-base
A base class for tcp client with basic functions
Version 3.2.0 published 2023-08-30 by fengmk2
Maintainers: coderhaoxin gxcsoccer shaoshuai0102 fengmk2
Keywords: tcp
https://npm.im/tcp-base

@heroui/use-form-reset
use-form-reset hook from `@react-aria` utils
Version 2.0.1 published 2025-07-14 by juniorgarciadev
Maintainers: juniorgarciadev
Keywords: use-form-reset
https://npm.im/@heroui/use-form-reset

@libp2p/tcp
A TCP transport for libp2p
Version 11.0.14 published 2026-03-28 by achingbrain
Maintainers: daviddias alanshaw achingbrain vascosantos npm-service-account-libp2p jacobheun
Keywords: IPFS TCP libp2p network p2p peer peer-to-peer
https://npm.im/@libp2p/tcp

tcp-proxy.js
simple tcp proxy
Version 1.5.0 published 2023-04-07 by wanghx
Maintainers: wanghx
Keywords: tcp proxy
https://npm.im/tcp-proxy.js

@total-typescript/ts-reset
A CSS reset for TypeScript, improving types for common JavaScript API's
Version 0.6.1 published 2024-09-02 by mpocock
Maintainers: mpocock
https://npm.im/@total-typescript/ts-reset

ansi-reset
The color reset, in ansi.
Version 0.1.1 published 2015-05-22 by jonschlinkert
Maintainers: doowb jonschlinkert
Keywords: reset 256 ansi cli color colors colour command command-line console format formatting iterm log logging rgb shell string style styles styling terminal text tty xterm
https://npm.im/ansi-reset

libp2p-tcp
Node.js implementation of the TCP module that libp2p uses, which implements the interface-connection and interface-transport interfaces
Version 0.17.2 published 2021-09-03 by vascosantos
Maintainers: jacobheun daviddias dignifiedquire achingbrain vascosantos
Keywords: libp2p network p2p peer peer-to-peer IPFS TCP
https://npm.im/libp2p-tcp

@xmpp/tcp
XMPP TCP for JavaScript
Version 0.14.0 published 2025-10-29 by sonny
Maintainers: sonny
Keywords: XMPP tcp
https://npm.im/@xmpp/tcp

wait-on
wait-on is a cross platform command line utility and Node.js API which will wait for files, ports, sockets, and http(s) resources to become available
Version 9.0.4 published 2026-02-12 by jeffbski
Maintainers: jeffbski
Keywords: wait delay cli files tcp ports sockets http exist ready available portable cross-platform unix linux windows win32 osx
https://npm.im/wait-on

modern-css-reset
A bare-bones CSS reset for modern web development
Version 1.4.0 published 2021-01-18 by andybelldesign
Maintainers: andybelldesign
Keywords: css reset modern css reset
https://npm.im/modern-css-reset

tunnel-ssh
Easy extendable SSH tunnel
Version 5.2.0 published 2024-12-15 by chbrock
Maintainers: chbrock
Keywords: tunnel ssh mysql develop net ssh-tunnel network
https://npm.im/tunnel-ssh

jsmodbus
Implementation for the Serial/TCP Modbus protocol.
Version 4.0.10 published 2023-12-21 by stefanpoeter
Maintainers: stefanpoeter
Keywords: client server serial port modbus tcp
https://npm.im/jsmodbus

styled-reset
Eric Meyer's Reset CSS for styled-components
Version 5.0.0 published 2025-08-30 by zautumnz
Maintainers: zautumnz
Keywords: css reset reset.css styled-components
https://npm.im/styled-reset

@unocss/reset
Collection of CSS resetting
Version 66.6.7 published 2026-03-18 by GitHub Actions
Maintainers: antfu unocss-bot zyyv
https://npm.im/@unocss/reset

gelf-pro
The Graylog Extended Log Format for the Node.js
Version 1.4.0 published 2025-01-02 by kkamkou
Maintainers: kkamkou
Keywords: graylog graylog2 gelf logging udp tcp tls ssl
https://npm.im/gelf-pro

@types/tcp-port-used
TypeScript definitions for tcp-port-used
Version 1.0.4 published 2023-11-07 by types
Maintainers: types
https://npm.im/@types/tcp-port-used

~ $module Jekyll
  module HomeAssistant
    class AlertBlock < Liquid::Block
      def initialize(tag_name, args, tokens)
        super
        raise SyntaxError, <<~MSG unless args.strip =~ SYNTAX
          Syntax error in alert block while parsing the following options:

          #{args}

          Valid syntax:
            {% <note|tip|important|warning|caution> [title="Extra title"] [icon="mdi:alert"] %}
        MSG

        @type = tag_name
        @options = Regexp.last_match(1)
      end

      def render(context)
        # We parse on render, as we now have context
        options = parse_options(@options, context)
        contents = super(context)

        title = @type.capitalize
        if options.include? :title
          title += ": #{options[:title]}"
        end

        if options.include? :icon
          icon = options[:icon]
        elsif @type == 'tip'
          icon = "mdi:lightbulb-outline"
        elsif @type == 'important'
          icon = "mdi:message-alert-outline"
        elsif @type == 'warning'
          icon = "mdi:alert-outline"
        elsif @type == 'caution'
          icon = "mdi:alert-circle-outline"
        else
          icon = "mdi:information-outline"
        end

        <<~MARKUP
          <div class="alert alert-#{@type}">
            <p class="alert-title"><iconify-icon inline icon='#{icon}'></iconify-icon> #{title}</p>
            <div class="alert-content">
              #{contents}
            </div>
          </div>
        MARKUP
      end

      private

      SYNTAX = /^((\s+\w+(=([\w.]+?|".+?"))?)*)$/
      OPTIONS_REGEX = /(?:\w="[^"]*"|\w=[\w.]+|\w)+/

      def parse_options(input, context)
        options = {}
        return options if input.empty?

        # Split along 3 possible forms: key="value", key=value, or just key
        input.scan(OPTIONS_REGEX) do |opt|
          key, value = opt.split('=')
          unless value.nil?
            if value&.include?('"')
              value.delete!('"')
            else
              value = context[value]
            end
          end
          options[key.to_sym] = value || true
        end
        options
      end
    end
  end
end
Liquid::Template.register_tag('note', Jekyll::HomeAssistant::AlertBlock)
Liquid::Template.register_tag('tip', Jekyll::HomeAssistant::AlertBlock)
Liquid::Template.register_tag('important', Jekyll::HomeAssistant::AlertBlock)
Liquid::Template.register_tag('warning', Jekyll::HomeAssistant::AlertBlock)
Liquid::Template.register_tag('caution', Jekyll::HomeAssistant::AlertBlock)
