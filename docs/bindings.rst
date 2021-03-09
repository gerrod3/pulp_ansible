Client Bindings
===============

Python Client
-------------

The `pulp-ansible-client package <https://pypi.org/project/pulp-ansible-client/>`_ on PyPI provides
bindings for all API calls in the `pulp_ansible API documentation <../restapi.html>`_. It is
currently published daily and with every RC.

The `pulpcore-client package <https://pypi.org/project/pulpcore-client/>`_ on PyPI provides bindings
for all API calls in the `pulpcore API documentation <https://docs.pulpproject.org/en/3.0/nightly/
restapi.html>`_. It is currently published daily and with every RC.


Ruby Client
-----------

The `pulp_ansible_client Ruby Gem <https://rubygems.org/gems/pulp_ansible_client>`_ on rubygems.org
provides bindings for all API calls in the `pulp_ansible API documentation <../restapi.html>`_. It
is currently published daily and with every RC.

The `pulpcore_client Ruby Gem <https://rubygems.org/gems/pulpcore_client>`_ on rubygems.org provides
bindings for all API calls in the `pulpcore API documentation <https://docs.pulpproject.org/en/3.0/
nightly/restapi.html>`_. It is currently published daily and with every RC.


Client in a language of your choice
-----------------------------------

A client can be generated using Pulp's OpenAPI schema and any of the available `generators
<https://openapi-generator.tech/docs/generators.html>`_.

Generating a client is a two step process:

**1) Download the OpenAPI schema for pulpcore and all installed plugins:**

.. code-block:: bash

    curl -o api.json http://<pulp-hostname>:24817/pulp/api/v3/docs/api.json

The OpenAPI schema for a specific plugin can be downloaded by specifying the plugin's module name
as a GET parameter. For example for ``pulp_ansible`` only endpoints use a query like this:

.. code-block:: bash

    curl -o api.json http://<pulp-hostname>:24817/pulp/api/v3/docs/api.json?plugin=pulp_ansible

**2) Generate a client using openapi-generator.**

The schema can then be used as input to the openapi-generator-cli. The documentation on getting
started with openapi-generator-cli is available on
`openapi-generator.tech <https://openapi-generator.tech/#try>`_.


Generating a client on dev environment
--------------------------------------

Pulp dev environment provided by `pulp_installer <https://github.com/pulp/pulp_installer>`_
introduces a set of useful
`aliases <https://github.com/pulp/pulp_installer/tree/master/roles/pulp_devel#aliases>`_,
like `pbindings`.

Examples:

- generating python bindings for pulp_ansible:

.. code-block:: bash

    pbindings pulp_ansible python

- generating ruby bindings for pulp_ansible with '3.0.0rc1.dev.10' version

.. code-block:: bash

    pbindings pulp_ansible ruby 3.0.0rc1.dev.10
