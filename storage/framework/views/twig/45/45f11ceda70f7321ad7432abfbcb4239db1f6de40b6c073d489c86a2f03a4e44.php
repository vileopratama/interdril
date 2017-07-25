<?php

/* E:\xpyrocms\htdocs\interdril\core/anomaly/relationship-field_type/resources/views/dropdown.twig */
class __TwigTemplate_80e919059e1f4150976346d650484be2c18a006912e692918c368b2b916c8c80 extends TwigBridge\Twig\Template
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
        echo "<select
        class=\"";
        // line 2
        echo twig_escape_filter($this->env, $this->getAttribute(($context["field_type"] ?? null), "class", array()), "html", null, true);
        echo "\"
        name=\"";
        // line 3
        echo twig_escape_filter($this->env, $this->getAttribute(($context["field_type"] ?? null), "input_name", array()), "html", null, true);
        echo "\"
        ";
        // line 4
        echo (($this->getAttribute(($context["field_type"] ?? null), "disabled", array())) ? ("disabled") : (""));
        echo "
        ";
        // line 5
        echo (($this->getAttribute(($context["field_type"] ?? null), "readonly", array())) ? ("readonly") : (""));
        echo ">

    ";
        // line 7
        if ($this->getAttribute(($context["field_type"] ?? null), "placeholder", array())) {
            // line 8
            echo "        <option value=\"\">";
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('trans')->getCallable(), array($this->getAttribute(($context["field_type"] ?? null), "placeholder", array()))), "html", null, true);
            echo "</option>
    ";
        }
        // line 10
        echo "
    ";
        // line 11
        $context['_parent'] = $context;
        $context['_seq'] = twig_ensure_traversable($this->getAttribute(($context["field_type"] ?? null), "options", array()));
        foreach ($context['_seq'] as $context["value"] => $context["title"]) {
            // line 12
            echo "        <option value=\"";
            echo twig_escape_filter($this->env, $context["value"], "html", null, true);
            echo "\" ";
            echo ((($this->getAttribute(($context["field_type"] ?? null), "id", array(), "method") == $context["value"])) ? ("selected") : (""));
            echo ">";
            echo twig_escape_filter($this->env, call_user_func_array($this->env->getFunction('trans')->getCallable(), array($context["title"])), "html", null, true);
            echo "</option>
    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['value'], $context['title'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 14
        echo "
</select>
";
    }

    public function getTemplateName()
    {
        return "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/relationship-field_type/resources/views/dropdown.twig";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  67 => 14,  54 => 12,  50 => 11,  47 => 10,  41 => 8,  39 => 7,  34 => 5,  30 => 4,  26 => 3,  22 => 2,  19 => 1,);
    }

    /** @deprecated since 1.27 (to be removed in 2.0). Use getSourceContext() instead */
    public function getSource()
    {
        @trigger_error('The '.__METHOD__.' method is deprecated since version 1.27 and will be removed in 2.0. Use getSourceContext() instead.', E_USER_DEPRECATED);

        return $this->getSourceContext()->getCode();
    }

    public function getSourceContext()
    {
        return new Twig_Source("<select
        class=\"{{ field_type.class }}\"
        name=\"{{ field_type.input_name }}\"
        {{ field_type.disabled ? 'disabled' }}
        {{ field_type.readonly ? 'readonly' }}>

    {% if field_type.placeholder %}
        <option value=\"\">{{ trans(field_type.placeholder) }}</option>
    {% endif %}

    {% for value, title in field_type.options %}
        <option value=\"{{ value }}\" {{ field_type.id() == value ? 'selected' }}>{{ trans(title) }}</option>
    {% endfor %}

</select>
", "E:\\xpyrocms\\htdocs\\interdril\\core/anomaly/relationship-field_type/resources/views/dropdown.twig", "");
    }
}
