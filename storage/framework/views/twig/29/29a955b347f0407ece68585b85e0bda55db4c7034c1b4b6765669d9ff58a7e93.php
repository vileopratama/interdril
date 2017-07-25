<?php

/* E:\xpyrocms\htdocs\interdril\storage\streams/interdril/pages/default_pages/2/content_en.twig */
class __TwigTemplate_5f91bf5a37701a4d5706597f1d7d316107ec0e29e1d7a3c5a2c83b40ed0ff988 extends TwigBridge\Twig\Template
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
        echo "<p>Drop us a line! We'd love to hear from you!</p><p><br></p>
<p>";
        // line 2
        echo $this->getAttribute(call_user_func_array($this->env->getFunction('form')->getCallable(), array("contact")), "to", array(0 => "example@domain.com"), "method");
        echo "</p>";
    }

    public function getTemplateName()
    {
        return "E:\\xpyrocms\\htdocs\\interdril\\storage\\streams/interdril/pages/default_pages/2/content_en.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  22 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<p>Drop us a line! We'd love to hear from you!</p><p><br></p>
<p>{{ form('contact').to('example@domain.com')|raw }}</p>", "E:\\xpyrocms\\htdocs\\interdril\\storage\\streams/interdril/pages/default_pages/2/content_en.twig", "");
    }
}
