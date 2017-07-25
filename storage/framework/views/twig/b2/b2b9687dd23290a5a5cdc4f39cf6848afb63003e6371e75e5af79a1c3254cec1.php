<?php

/* E:\xpyrocms\htdocs\interdril\storage\streams/interdril//support/parsed/8debf2ebdbb79707aba077b02cbc81b3.twig */
class __TwigTemplate_624ba6324c6e35a1629fc80f42076e71ecca6d1fac095715f9c92a670a0426ae extends TwigBridge\Twig\Template
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
        echo $this->getAttribute($this->getAttribute(($context["entry"] ?? null), "publish", array()), "toggle", array());
    }

    public function getTemplateName()
    {
        return "E:\\xpyrocms\\htdocs\\interdril\\storage\\streams/interdril//support/parsed/8debf2ebdbb79707aba077b02cbc81b3.twig";
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
        return new Twig_Source("{{ entry.publish.toggle|raw }}", "E:\\xpyrocms\\htdocs\\interdril\\storage\\streams/interdril//support/parsed/8debf2ebdbb79707aba077b02cbc81b3.twig", "");
    }
}
