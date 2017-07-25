<?php

/* E:\xpyrocms\htdocs\interdril\storage\streams/interdril/pages/types/1/layout.twig */
class __TwigTemplate_951ec8ca852e0d5152c72104144419f2140e84ed0e7ca72a51752ff0d070160f extends TwigBridge\Twig\Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo $this->getAttribute($this->getAttribute(($context["page"] ?? null), "content", array()), "render", array());
    }

    public function getTemplateName()
    {
        return "E:\\xpyrocms\\htdocs\\interdril\\storage\\streams/interdril/pages/types/1/layout.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("{{ page.content.render|raw }}", "E:\\xpyrocms\\htdocs\\interdril\\storage\\streams/interdril/pages/types/1/layout.twig", "");
    }
}
