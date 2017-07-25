<?php

/* E:\xpyrocms\htdocs\interdril\core/anomaly/pages-module/resources/views/page.twig */
class __TwigTemplate_be7ef1d01d3aef6f49f58b26f3fabb988dc32e5ae223a06f84046d61fdbee151 extends TwigBridge\Twig\Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->blocks = array(
            'content' => array($this, 'block_content'),
            'page' => array($this, 'block_page'),
        );
    }

    protected function doGetParent(array $context)
    {
        // line 1
        return $this->loadTemplate((($this->getAttribute($this->getAttribute(($context["page"] ?? null), "theme_layout", array()), "key", array())) ? ($this->getAttribute($this->getAttribute(($context["page"] ?? null), "theme_layout", array()), "key", array())) : ($this->getAttribute($this->getAttribute($this->getAttribute(($context["page"] ?? null), "type", array()), "theme_layout", array()), "key", array()))), "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/pages-module/resources/views/page.twig", 1);
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->getParent($context)->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_content($context, array $blocks = array())
    {
        // line 4
        echo "    ";
        $this->displayBlock('page', $context, $blocks);
    }

    public function block_page($context, array $blocks = array())
    {
        // line 5
        echo "        ";
        echo ($context["content"] ?? null);
        echo "
    ";
    }

    public function getTemplateName()
    {
        return "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/pages-module/resources/views/page.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  38 => 5,  31 => 4,  28 => 3,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{% extends page.theme_layout.key ?: page.type.theme_layout.key %}

{% block content %}
    {% block page %}
        {{ content|raw }}
    {% endblock %}
{% endblock %}
", "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/pages-module/resources/views/page.twig", "");
    }
}
