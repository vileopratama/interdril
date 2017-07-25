<?php

/* E:\xpyrocms\htdocs\interdril\core/anomaly/contact-plugin/resources/views/email/contact.twig */
class __TwigTemplate_de04f63de39b98ea2074ad59ee40192409ce49bae653bf00f28b76a63253eda5 extends TwigBridge\Twig\Template
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
        echo "<h3>";
        echo twig_escape_filter($this->env, ($context["subject"] ?? null), "html", null, true);
        echo "</h3>

";
        // line 3
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable(($context["fields"] ?? null));
        foreach ($context['_seq'] as $context["_key"] => $context["field"]) {
            // line 4
            echo "    ";
            // line 5
            echo "    <strong>";
            echo twig_escape_filter($this->env, $this->getAttribute($context["field"], "getLabel", array(), "method"), "html", null, true);
            echo ":</strong> ";
            echo $this->getAttribute($context["field"], "__print", array(), "method");
            echo "
    <br>
";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['field'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 8
        echo "<hr>
Sent by: ";
        // line 9
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('request_ip')->getCallable(), array("ip")), "html", null, true);
        echo "
<br>
Sent from: <a href=\"";
        // line 11
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('url_previous')->getCallable(), array("previous")), "html", null, true);
        echo "\">";
        echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('url_previous')->getCallable(), array("previous")), "html", null, true);
        echo "</a>
";
    }

    public function getTemplateName()
    {
        return "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/contact-plugin/resources/views/email/contact.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  51 => 11,  46 => 9,  43 => 8,  31 => 5,  29 => 4,  25 => 3,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<h3>{{ subject }}</h3>

{% for field in fields %}
    {# Mind you these are presenters #}
    <strong>{{ field.getLabel() }}:</strong> {{ field.__print()|raw }}
    <br>
{% endfor %}
<hr>
Sent by: {{ request_ip() }}
<br>
Sent from: <a href=\"{{ url_previous() }}\">{{ url_previous() }}</a>
", "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/contact-plugin/resources/views/email/contact.twig", "");
    }
}
