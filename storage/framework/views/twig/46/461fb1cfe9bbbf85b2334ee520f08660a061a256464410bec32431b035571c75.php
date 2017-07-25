<?php

/* theme::layouts/default */
class __TwigTemplate_ccb3d5f274ac6917b3353834494cda909b5d130289617bc4a29b6f7301d468e5 extends TwigBridge\Twig\Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'metadata' => array($this, 'block_metadata'),
            'content' => array($this, 'block_content'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<!doctype html>

<html>

<head>
    ";
        // line 6
        $this->displayBlock('metadata', $context, $blocks);
        // line 9
        echo "</head>

<body class=\"variant-";
        // line 11
        echo twig_escape_filter($this->env, twig_random($this->env, 8), "html", null, true);
        echo "\" data-variants=\"8\">

";
        // line 17
        echo "
<section id=\"app\">

    ";
        // line 20
        $this->loadTemplate("theme::partials/topbar", "theme::layouts/default", 20)->display($context);
        // line 21
        echo "    ";
        $this->loadTemplate("theme::partials/sidebar", "theme::layouts/default", 21)->display($context);
        // line 22
        echo "    ";
        $this->loadTemplate("theme::partials/menu", "theme::layouts/default", 22)->display($context);
        // line 23
        echo "
    <main id=\"main\" style=\"min-height: 1500px;\">

        ";
        // line 26
        echo call_user_func_array($this->env->getFunction('breadcrumb')->getCallable(), array());
        echo "

        <div class=\"container-fluid\">
            ";
        // line 29
        $this->loadTemplate("theme::partials/messages", "theme::layouts/default", 29)->display($context);
        // line 30
        echo "            ";
        $this->loadTemplate("theme::partials/buttons", "theme::layouts/default", 30)->display($context);
        // line 31
        echo "        </div>

        ";
        // line 33
        $this->displayBlock('content', $context, $blocks);
        // line 34
        echo "
    </main>
</section>

";
        // line 38
        $this->loadTemplate("theme::partials/footer", "theme::layouts/default", 38)->display($context);
        // line 39
        $this->loadTemplate("theme::partials/modals", "theme::layouts/default", 39)->display($context);
        // line 40
        $this->loadTemplate("theme::partials/js", "theme::layouts/default", 40)->display($context);
        // line 41
        echo "
</body>
</html>
";
        $this->env->getExtension('deferred')->resolve($this, $context, $blocks);
    }

    public function block_metadata($context, array $blocks = array())
    {
        $this->env->getExtension('deferred')->defer($this, 'metadata');
    }

    // line 6
    public function block_metadata_deferred($context, array $blocks = array())
    {
        // line 7
        echo "    ";
        $this->loadTemplate("theme::partials/metadata", "theme::layouts/default", 7)->display($context);
        // line 8
        echo "    ";
        $this->env->getExtension('deferred')->resolve($this, $context, $blocks);
    }

    // line 33
    public function block_content($context, array $blocks = array())
    {
    }

    public function getTemplateName()
    {
        return "theme::layouts/default";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  110 => 33,  105 => 8,  102 => 7,  99 => 6,  86 => 41,  84 => 40,  82 => 39,  80 => 38,  74 => 34,  72 => 33,  68 => 31,  65 => 30,  63 => 29,  57 => 26,  52 => 23,  49 => 22,  46 => 21,  44 => 20,  39 => 17,  34 => 11,  30 => 9,  28 => 6,  21 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<!doctype html>

<html>

<head>
    {% block metadata deferred %}
    {% include \"theme::partials/metadata\" %}
    {% endblock %}
</head>

<body class=\"variant-{{ random(8) }}\" data-variants=\"8\">

{#{% include \"theme::partials/push\" %}#}
{#{% include \"theme::partials/brand\" %}#}
{#{% include \"theme::partials/navbar\" %}#}
{#{% include \"theme::partials/header\" %}#}

<section id=\"app\">

    {% include \"theme::partials/topbar\" %}
    {% include \"theme::partials/sidebar\" %}
    {% include \"theme::partials/menu\" %}

    <main id=\"main\" style=\"min-height: 1500px;\">

        {{ breadcrumb() }}

        <div class=\"container-fluid\">
            {% include \"theme::partials/messages\" %}
            {% include \"theme::partials/buttons\" %}
        </div>

        {% block content %}{% endblock %}

    </main>
</section>

{% include \"theme::partials/footer\" %}
{% include \"theme::partials/modals\" %}
{% include \"theme::partials/js\" %}

</body>
</html>
", "theme::layouts/default", "");
    }
}
